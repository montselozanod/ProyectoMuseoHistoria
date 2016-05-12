class PreguntasController < ApplicationController
  before_action :set_pregunta, only: [:show, :edit, :update, :destroy]

  def index
    @preguntas = Pregunta.all
  end

  # GET /museos/1
  # GET /museos/1.json
  def show
    @pregunta = Pregunta.find(params[:id])
    @answers = @pregunta.answers
    @salaid = params[:salaid]
    @museoid = params[:museoid]
    @exposicionid = params[:exposicionid]
    @preguntaid = @pregunta.id
  end

  def new
    @pregunta = Pregunta.new
    @salaid = params[:salaid]
    @museoid = params[:museoid]
    @exposicionid = params[:exposicionid]
  end

  def edit
    @exposicionid = params[:exposicionid]
    @museoid = params[:museoid]
    @salaid = params[:salaid]
  end

  def update
    @salaid = @pregunta.sala_id
    @exposicionid = Sala.find(@salaid).exposicion_id
    @museoid = Exposicion.find(@exposicionid).museo_id

    @pregunta.update(pregunta_params)

    redirect_to sala_show_path({:museoid => @museoid, :exposicionid => @exposicionid, :id => @salaid})
  end

  def destroy
    @id = @pregunta.sala_id.to_s
    @sala = Sala.find(@id)
    @exposicion = Exposicion.find(@sala.exposicion_id)

    @pregunta.destroy

    redirect_to sala_show_path({:museoid => @exposicion.museo_id, :exposicionid => @exposicion.id, :id => @sala.id})
  end

  def create
    @pregunta = Pregunta.new(pregunta_params)

    @salaid = params[:salaid]
    @exposicionid = params[:exposicionid]
    @museoid = params[:museoid]

    respond_to do |format|
      if @pregunta.save
        format.html { redirect_to sala_show_path({:museoid => @museoid, :exposicionid => @exposicionid, :id => @salaid}), notice: 'Pregunta was successfully created.' }
        format.json { render :show, status: :created, location: @pregunta }
      else
        format.html { render :new }
        format.json { render json: @pregunta.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pregunta
      @pregunta = Pregunta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pregunta_params
      params.require(:pregunta).permit(:description, :extraInfo, :active, :imgURL, :sala_id, answers_attributes: [:textAnswer, :pregunta_id, :correct, :id, :active])
    end

end
