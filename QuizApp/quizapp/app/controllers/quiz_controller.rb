class QuizController < ApplicationController
  before_filter :authenticate_user!
  def index
    @museos = Museos.all
  end
end
