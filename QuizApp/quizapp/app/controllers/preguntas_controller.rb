class PreguntasController < ApplicationController
  before_action :set_pregunta, only: [:show, :edit, :update, :destroy]

  def index
    @preguntas = Pregunta.all
  end

  # GET /museos/1
  # GET /museos/1.json
  def show
    @pregunta = Pregunta.find(params[:id])
    @preguntas = @pregunta.preguntas
  end

  def new
    @pregunta = Pregunta.new
  end

  def create
    @pregunta = Pregunta.new(pregunta_params)

    respond_to do |format|
      if @pregunta.save
        format.html { redirect_to @pregunta, notice: 'Pregunta was successfully created.' }
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
      params.require(:pregunta).permit(:description, :extraInfo, :active, :imgURL, :sala_id)
    end

end
