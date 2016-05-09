class ExposicionsController < ApplicationController
  before_action :set_exposicion, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @exposicions = Exposicion.all
    respond_with(@exposicions)
  end

  # GET /quiz/exposicions/1
  # GET /quiz/exposicions/1.json
  def salasquiz
    @exposicion = Exposicion.find(params[:id])
    @salas = @exposicion.salas
    current_user.currentPoints = 0
    current_user.save
  end

  def show
    @exposicion = Exposicion.find(params[:id])
    @salas = @exposicion.salas
    @museoid = params[:museoid]
    respond_with(@exposicion)
  end

  def new
    @exposicion = Exposicion.new
    @museoid = params[:museoid]
    respond_with(@exposicion)
  end

  def edit
    @museoid = params[:museoid]
  end

  def create
    @exposicion = Exposicion.new(exposicion_params)
    @exposicion.save
    respond_with(@exposicion)
  end

  def update
    @id = @exposicion.museo_id.to_s
    @exposicion.update(exposicion_params)
    redirect_to museo_show_path(@id)
  end

  def destroy
    @id = @exposicion.museo_id.to_s
    @exposicion.destroy
    redirect_to museo_show_path(@id)
  end

  private
    def set_exposicion
      @exposicion = Exposicion.find(params[:id])
    end

    def exposicion_params
      params.require(:exposicion).permit(:name, :description, :museo_id, :imgURL, :etype, :active)
    end
end
