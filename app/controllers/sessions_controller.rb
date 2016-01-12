class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by( email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      log_in user
      if (user.role == 1)
      redirect_to user_path
    elsif (user.role == 2)
      redirect_to technician_path
    else
      flash.now[:danger] = 'Invalid email/passowrd combination'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:error] = 'You have logged out'
    redirect_to root_path
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end
  end
