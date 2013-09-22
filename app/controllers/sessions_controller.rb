class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(:email => params[:login]) || User.find_by(:username => params[:login])
    if user
      session[:user_id] = user.id
      redirect_to user.user_type == User.kid ? kid_path(user.kid) : adult_path(user.adult)
      # redirect_to user.user_type == User.kid ? kid_path(Kid.find_by(:user_id => user.id)) : adult_path(Adult.find_by(:user_id => user.id))
    else
      render 'new'
    end
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => "Signed out successfully."
  end

end
