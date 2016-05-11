class AdminsController < ApplicationController
  before_filter :authenticate_admin!
  def index

  end

  def resultados
    @users = User.all
  end

  def user_results
    @id = params[:user_id]
    @user = User.find(@id)
    @trypoints = @user.trypoints

    @prom = 0

    @trypoints.each do |trypoint|
      @prom += trypoint.points
    end

    @prom = @prom/@trypoints.length
    respond_to do |format|
      format.js
    end
    #render :partial=>"user_results", :locals=>{:trypoints=>@selected}
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
