class ExposicionsController < ApplicationController
  before_action :set_exposicion, only: [:show, :edit, :update, :destroy]

  def index
    @exposicions = Exposicion.all
  end

  # GET /museos/1
  # GET /museos/1.json
  def show
    @exposicion = Exposicion.find(params[:id])
    @salas = @exposicion.salas
  end

  def new
    @exposicion = Exposicion.new
  end

  def create
    @exposicion = Exposicion.new(exposicion_params)

    respond_to do |format|
      if @exposicion.save
        format.html { redirect_to @exposicion, notice: 'Exposicion was successfully created.' }
        format.json { render :show, status: :created, location: @exposicion }
      else
        format.html { render :new }
        format.json { render json: @exposicion.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exposicion
      @exposicion = Exposicion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exposicion_params
      params.require(:exposicion).permit(:name, :description, :imgURL, :type, :active, :museo_id)
    end

end
