class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by( email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      #logger.debug user['role']
      if user['role'] == 1
        redirect_to root_path
      elsif user['role'] == 2
        redirect_to root_path
      else
        flash.now[:danger] = 'an error occurred on login'
        render 'new'
      end
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def current_user
    @current_user||= User.find_by(id: session[:user_id])
  end


  def destroy
    log_out if logged_in?
    flash[:error] = 'You have logged out'
    redirect_to root_path
  end
end

  #private
    #def user_params
      #params.require(:user).permit(:email, :password)
    #end
