class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    if User.new(user_params).save
      flash[:success] = 'Thank you for Registering!'
      redirect_to users_show_path
    else
      flash[:error] = 'Registration has Failed'
      redirect_to new_user_path
    end
  end

  def edit
  end

  def delete
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
