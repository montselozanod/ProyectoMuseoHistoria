class TrypointssController < ApplicationController
  def index
    @trypointss = Trypoints.all
  end

  def new
    @trypoints = Trypoints.new
  end

  def create
    @trypoints = Trypoints.new(trypoints_params)

    respond_to do |format|
      if @trypoints.save
        format.html { redirect_to @trypoints, notice: 'TryPoints was successfully created.' }
        format.json { render :show, status: :created, location: @trypoints }
      else
        format.html { render :new }
        format.json { render json: @trypoints.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trypoints
      @trypoints = Trypoints.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trypoints_params
      params.require(:trypoints).permit(:points, :numTry, :user_id)
    end

  end

end
