class TrypointsController < ApplicationController

  before_action :set_trypoints, only: [:show, :edit, :update, :destroy]

  # GET /trypointss
  # GET /trypointss.json
  def index
    @trypoints = Trypoint.all
  end

  # GET /trypointss/1
  # GET /trypointss/1.json
  def show
  end

  # GET /trypointss/new
  def new
    @trypoint = Trypoint.new
  end

  # GET /trypointss/1/edit
  def edit
  end

  # POST /trypointss
  # POST /trypointss.json
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

  # PATCH/PUT /trypointss/1
  # PATCH/PUT /trypointss/1.json
  def update
    respond_to do |format|
      if @trypoints.update(trypoints_params)
        format.html { redirect_to @trypoints, notice: 'Trypointss was successfully updated.' }
        format.json { render :show, status: :ok, location: @trypoints }
      else
        format.html { render :edit }
        format.json { render json: @trypoints.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trypointss/1
  # DELETE /trypointss/1.json
  def destroy
    @trypoints.destroy
    respond_to do |format|
      format.html { redirect_to trypointss_index_url, notice: 'Trypointss was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trypoint
      @trypoint = Trypoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trypoint_params
      params.require(:trypoints).permit(:points, :numTry, :user_id, :museo, :sala)
    end
end
