class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by( email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      if (user.role == 1)
      redirect_to root_path
    elsif (user.role == 2)
      redirect_to root_path
    else
      flash.now[:danger] = 'Invalid email/passowrd combination'
      render 'new'
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def log_in(user)
    session[:user_id] = user.id
  end


  def logged_in?
    !current_user.nil?
  end

  def destroy
    log_out if logged_in?
    flash[:error] = 'You have logged out'
    redirect_to root_path
  end
end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end
  end
