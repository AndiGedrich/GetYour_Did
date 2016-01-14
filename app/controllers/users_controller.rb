class UsersController < ApplicationController
  before_action :logged_in_client, only: [:show_client, :edit, :delete]
  before_action :correct_user, only: [:edit, update]
  def index
  end

  def show_client
    @user = User.find(params[:id])
  end

  def show_technician
    @user = User.find(params[:id])
  end

  def new_client
    @user = User.new
  end

  def new_technician
    @technician = User.new
  end

  def create_client
    @user = User.new(user_params)
    @user.role = params[:user][:role]

    if @user.save
      flash[:success] = 'Thank you for Registering!'
      redirect_to client_path
    else
      render 'new'
    end
  end

  def create_technician
    @technician = User.new
    @technician.role = params[:user][:role]
    @salon = params[:id]
    if @technician.save
      flash[:success] = 'Thank you for Registering!'
      redirect_to technician_path
    else
      render 'new_technician'
    end
  end

  def edit
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "You have updated your profile!"
      redirect_to client_path
    else
      render 'edit'
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def delete
  end

  def logged_in_client
    if user.role == 1
      unless logged_in?
        store_location
        flash[:danger]="Please log in to access"
        redirect_to :back
      end
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_path) unless current_user?(@user)
end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :role, :salon_id)
    end
end
