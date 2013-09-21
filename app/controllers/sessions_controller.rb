class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(:email => params[:login]) || User.find_by(:username => params[:login])
    if user
      session[:user_id] = user.id
      redirect_to assignments_index_path
    else
      render 'new'
    end
  end
end
