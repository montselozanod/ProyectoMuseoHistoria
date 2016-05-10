class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :edit, :update, :destroy]

  def index
    @answers = Answer.all
  end

  # GET /museos/1
  # GET /museos/1.json
  def show
    @answer = Answer.find(params[:id])
  end

  def new
    @answer = Answer.new
    @preguntaid  = @answer.pregunta_id
    
    @salaid = params[:salaid]
    @exposicionid = params[:exposicionid]
    @museoid = params[:museoid]
    @preguntaid  = params[:preguntaid]
  end
  
  def edit
    @salaid = params[:salaid]
    @exposicionid = params[:exposicionid]
    @museoid = params[:museoid]
    @preguntaid  = params[:preguntaid]
  end
  
  def update
    @preguntaid  = Pregunta.find(@answer.pregunta_id)
    @salaid = Sala.find(@preguntaid.sala_id)
    @exposicionid = Exposicion.find(@salaid.exposicion_id)
    @museoid = Museo.find(@exposicionid.museo_id)
    
    @answer.update(answer_params)
    
    redirect_to pregunta_show_path({:museoid => @museoid, :exposicionid => @exposicionid, :salaid => @salaid, :id => @preguntaid})
  end

  def create
    @answer = Answer.new(answer_params)
    
    @preguntaid  = Pregunta.find(@answer.pregunta_id)
    @salaid = Sala.find(@preguntaid.sala_id)
    @exposicionid = Exposicion.find(@salaid.exposicion_id)
    @museoid = Museo.find(@exposicionid.museo_id)

    respond_to do |format|
      if @answer.save
        format.html { redirect_to pregunta_show_path({:museoid => @museoid.id, :exposicionid => @exposicionid.id, :salaid => @salaid.id, :id => @preguntaid.id}), notice: 'Answer was successfully created.' }
        format.json { render :show, status: :created, location: @answer }
      else
        format.html { render :new }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  def checkAnswer
    @answer = Answer.find(params[:id])
    if @answer.correct
      current_user.currentPoints += 10
      current_user.save
    end
  end
  
  def destroy
      
    @preguntaid  = Pregunta.find(@answer.pregunta_id)
    @salaid = Sala.find(@preguntaid.sala_id)
    @exposicionid = Exposicion.find(@salaid.exposicion_id)
    @museoid = Museo.find(@exposicionid.museo_id)
    
    @answer.destroy
    
    redirect_to pregunta_show_path({:museoid => @museoid.id, :exposicionid => @exposicionid.id, :salaid => @salaid.id, :id => @preguntaid.id})
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:textAnswer, :active, :imgURL, :pregunta_id, :correct)
    end

end
