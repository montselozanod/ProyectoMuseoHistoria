class AdminController < ApplicationController
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

end
