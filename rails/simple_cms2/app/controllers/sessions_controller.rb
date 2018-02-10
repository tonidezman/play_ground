class SessionsController < ApplicationController
  def new
  end

  def create
    email = params[:sessions][:email]
    password = params[:password]
    user = AdminUser.find_by(email: email)

    if user&.authenticate(password)
      session[:user_id] = user.id
      redirect_to admin_subjects_path
    else
      flash.now[:warning] =  "Wrong username or password!"
      render :new
    end
  end
end
