class PagesController < ApplicationController
  def landing
    unless user_signed_in?
      flash[:notice] = 'Please login'
      redirect_to new_user_session_path
    end
  end
  
  def menu
    @categories = Category.all
    @next_hue = 0
  end
  
end
