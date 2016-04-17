class TrypointsController < ApplicationController
  def index
    @trypoints = Trypoint.all
  end

  def new
    @trypoint = Trypoint.new
  end

  def create
    @trypoint = Trypoint.new(trypoint_params)

    respond_to do |format|
      if @trypoint.save
        format.html { redirect_to @trypoint, notice: 'TryPoints was successfully created.' }
        format.json { render :show, status: :created, location: @trypoint }
      else
        format.html { render :new }
        format.json { render json: @trypoint.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trypoint
      @trypoint = Trypoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trypoint_params
      params.require(:trypoints).permit(:points, :numTry, :user_id)
    end

  end

end
