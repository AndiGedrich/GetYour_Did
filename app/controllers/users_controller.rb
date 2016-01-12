class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create_client
    @user = User.new(user_params)
    @user.role = params[:user][:role]

    if @user.save
      flash[:success] = 'Thank you for Registering!'
      redirect_to @user
    else
      render 'new'
    end
  end

  def create_technician
    @user = User.new
    @user.role = params[:user][:role]
    @salon = params[:id]
    if @user.save
      flash[:success] = 'Thank you for Registering!'
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end

  def delete
  end



  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
