class ExposicionsController < ApplicationController
  before_action :set_exposicion, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @exposicions = Exposicion.all
    respond_with(@exposicions)
  end

  def show
    respond_with(@exposicion)
  end

  def new
    @exposicion = Exposicion.new
    @museoid = params[:museoid]
    respond_with(@exposicion)
  end

  def edit
  end

  def create
    @exposicion = Exposicion.new(exposicion_params)
    @exposicion.save
    respond_with(@exposicion)
  end

  def update
    @exposicion.update(exposicion_params)
    respond_with(@exposicion)
  end

  def destroy
    @exposicion.destroy
    respond_with(@exposicion)
  end

  private
    def set_exposicion
      @exposicion = Exposicion.find(params[:id])
    end

    def exposicion_params
      params.require(:exposicion).permit(:name, :description, :museo_id, :imgURL, :etype, :active)
    end
end
