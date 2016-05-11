class AdminsController < ApplicationController
  before_filter :authenticate_admin!
  def index

  end

  def resultados
    @trypoints = Trypoint.all
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
