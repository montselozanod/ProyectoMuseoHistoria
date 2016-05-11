class SalasController < ApplicationController
  before_action :set_sala, only: [:show, :edit, :update, :destroy]
  protect_from_forgery

  def index
    @salas = Sala.all
  end

  # GET /museos/1
  # GET /museos/1.json
  def show
    @sala = Sala.find(params[:id])
    @preguntas = @sala.preguntas
    @exposicionid = params[:exposicionid]
    @museoid = params[:museoid]
  end

  def showquiz
    @sala = Sala.find(params[:id])
    @preguntas = @sala.preguntas
    @exposicionid = params[:exposicionid]
    @museoid = params[:museoid]
  end

  def new
    @sala = Sala.new
    @exposicionid = params[:exposicionid]
    @museoid = params[:museoid]
  end

  def edit
    @exposicionid = params[:exposicionid]
    @museoid = params[:museoid]
  end

  def update
    @id = @sala.exposicion_id.to_s
    @exposicion = Exposicion.find(@id)
    @sala.update(sala_params)
    redirect_to exposicion_show_path({:museoid => @exposicion.museo_id, :id => @id})
  end

  def destroy
    @id = @sala.exposicion_id.to_s
    @exposicion = Exposicion.find(@id)
    @sala.destroy
    redirect_to exposicion_show_path({:museoid => @exposicion.museo_id, :id => @id})
  end

  def create
    @sala = Sala.new(sala_params)
    @id = @sala.exposicion_id.to_s
    @exposicion = Exposicion.find(@id)

    respond_to do |format|
      if @sala.save
        format.html { redirect_to exposicion_show_path({:museoid => @exposicion.museo_id, :id => @id}), notice: 'Sala was successfully created.' }
        format.json { render :show, status: :created, location: @sala }
      else
        format.html { render :new }
        format.json { render json: @sala.errors, status: :unprocessable_entity }
      end
    end
  end

  def endquiz
    @sala = Sala.find(params[:id])
    tries = current_user.trypoints.length
    if tries > 0
      numTry = tries + 1
    else
      numTry = 1
    end

    @idExp = @sala.exposicion_id.to_s
    @exposicion = Exposicion.find(@idExp)
    @idMuseo = @exposicion.museo_id

    museoName = Museo.find(@idMuseo).name
    object = Trypoint.new(:points => current_user.currentPoints, :numTry => numTry , :user_id => current_user.id, :museo => museoName, :sala =>@sala.name)
    object.save
  end

  def sumPoints
    current_user.currentPoints += 10
    current_user.save
    respond_to do |format|
      format.json { head :ok }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sala
      @sala = Sala.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sala_params
      params.require(:sala).permit(:number, :name, :description, :mapImgURL, :exposicion_id)
    end

end
