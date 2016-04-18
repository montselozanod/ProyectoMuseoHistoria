class QuizController < ApplicationController
  before_filter :authenticate_user!
  def index
    @museos = Museo.all
  end
end
