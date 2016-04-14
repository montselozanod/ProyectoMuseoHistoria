class HomeController < ApplicationController
  def index
    if admin_signed_in?
      redirect_to '/dashboard'
    end

    if user_signed_in?
      redirect_to '/quiz'
    end
  end
end
