class AdminsController < ApplicationController
  before_filter :authenticate_admin!
  def index

  end

  def resultados
    @users = User.all
    @trypoints = Trypoint.all

    @prom = 0

    @trypoints.each do |trypoint|
      @prom += trypoint.points
    end

    @prom = @prom/@trypoints.length
  end

  def user_results
    @id = params[:user_id]
    @trypoints
    if @id.to_i == -1
      @trypoints = Trypoint.all
    else
      @user = User.find(@id)
      @trypoints = @user.trypoints
    end

    @prom = 0

    @trypoints.each do |trypoint|
      @prom += trypoint.points
    end

    @prom = @prom/@trypoints.length

    respond_to do |format|
      format.js
    end
  end

  def registrar
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)

    respond_to do |format|
      if @admin.save
        format.html { redirect_to "/dashboard", notice: 'Admin was successfully created.' }
        format.json { render "registrar", status: :created, location: @admin }
      else
        format.html { render "registrar" }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_params
      params.require(:admin).permit(:email, :password)
    end

end
