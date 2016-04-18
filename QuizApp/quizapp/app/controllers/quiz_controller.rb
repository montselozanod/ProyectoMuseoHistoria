class QuizController < ApplicationController
  before_filter :authenticate_user!
  def index
    current_user.currentPoints = 0
    current_user.save
    @museos = Museo.all
  end
end
