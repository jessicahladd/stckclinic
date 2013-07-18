class UserSessionsController < ApplicationController
  # GET /user_sessions
  # GET /user_sessions.json
  def new
  end

  def create
    if login(params[:username], params[:password])
      redirect_back_or_to(clinics_path, message: 'Logged in successfully.')
    else
      flash.now.alert = "Login failed."
      render action: :new
    end
  end
  
  def destroy
    logout
    redirect_to(:usernames, message: 'Logged out!')
  end
end
