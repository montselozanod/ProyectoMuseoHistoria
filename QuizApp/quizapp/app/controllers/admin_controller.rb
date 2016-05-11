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
    logger.debug "Person attributes hash: #{@user.attributes.inspect}"
    @trypoints = @user.trypoints
    logger.debug "Person attributes hash: #{@selected}"

    respond_to do |format|
      format.js
    end
    #render :partial=>"user_results", :locals=>{:trypoints=>@selected}
  end

end
