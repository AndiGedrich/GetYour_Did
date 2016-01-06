class TechSessionsController < ApplicationController
  def new
  end

    def create
      technician = Technician.find_by( email: params[:tech_session][:email].downcase)

    if technician && technician.authenticate(params[:tech_session][:password])
      log_in technician
      redirect_to technician
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:error] = 'You have logged out'
    redirect_to root_path
  end

  private
    def technician_params
      params.require(:technician).permit(:email, :password)
    end
  end
