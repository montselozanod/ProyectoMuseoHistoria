class QuizController < ApplicationController
  before_filter :authenticate_user!
  def index
    cookies[:points] = 0
    @museos = Museo.all
  end
end
