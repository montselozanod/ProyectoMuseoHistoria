class SalasController < ApplicationController
  before_action :set_sala, only: [:show, :edit, :update, :destroy]

  def index
    cookies[:points] = 0
    @salas = Sala.all
  end

  # GET /museos/1
  # GET /museos/1.json
  def show
    @sala = Sala.find(params[:id])
    @preguntas = @sala.preguntas
  end

  def new
    @sala = Sala.new
  end

  def create
    @sala = Sala.new(sala_params)

    respond_to do |format|
      if @sala.save
        format.html { redirect_to @sala, notice: 'Sala was successfully created.' }
        format.json { render :show, status: :created, location: @sala }
      else
        format.html { render :new }
        format.json { render json: @sala.errors, status: :unprocessable_entity }
      end
    end
  end

  def endquiz
    @sala = Sala.find(params[:id])
    current_user.currentPoints = cookies[:points]
    current_user.save
    tries = current_user.trypoints.length

    if tries > 0
      numTry = tries + 1
    else
      numTry = 1
    end

    object = Trypoint.new(:points => cookies[:points], :numTry => numTry , :user_id => current_user.id)
    object.save
    cookies[:points] = 0
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
