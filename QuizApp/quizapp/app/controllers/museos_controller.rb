class MuseosController < ApplicationController
  before_filter :authenticate_admin!, only: [:index, :show, :new, :edit, :destroy, :create, :update]
  before_action :set_museo, only: [:show, :edit, :update, :destroy]

  # GET /museos
  # GET /museos.json
  def index
    @museos = Museo.all
  end

  # GET /museos/1
  # GET /museos/1.json
  def show
    @museo = Museo.find(params[:id])
    @exposicions = @museo.exposicions
  end

  # GET /quiz/museos/1
  # GET /quiz/museos/1.json
  def indexquiz
    @museo = Museo.find(params[:id])
    @exposicions = @museo.exposicions
  end

  # GET /museos/new
  def new
    @museo = Museo.new
  end

  # GET /museos/1/edit
  def edit
  end

  # POST /museos
  # POST /museos.json
  def create
    @museo = Museo.new(museo_params)

    respond_to do |format|
      if @museo.save
        format.html { redirect_to museo_index_path, notice: 'Museo was successfully created.' }
        format.json { render :show, status: :created, location: @museo }
      else
        format.html { render :new }
        format.json { render json: @museo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /museos/1
  # PATCH/PUT /museos/1.json
  def update
    respond_to do |format|
      if @museo.update(museo_params)
        format.html { redirect_to museo_index_path, notice: 'Museo was successfully updated.' }
        format.json { render :show, status: :ok, location: @museo }
      else
        format.html { render :edit }
        format.json { render json: @museo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /museos/1
  # DELETE /museos/1.json
  def destroy
    @museo.destroy
    respond_to do |format|
      format.html { redirect_to museos_url, notice: 'Museo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_museo
      @museo = Museo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def museo_params
      params.require(:museo).permit(:name, :description, :imgURL)
    end
end
