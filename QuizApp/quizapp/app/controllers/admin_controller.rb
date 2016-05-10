class AdminController < ApplicationController
  before_filter :authenticate_admin!
  def index

  end
  
  def resultados
    @trypoints = Trypoint.all
  end

end
