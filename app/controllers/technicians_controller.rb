class TechniciansController < ApplicationController
  def index
  end

  def show
    @technician = Technician.find(params[:id])
  end

  def new
    @technician = Technician.new
  end

  def create
    @technician = Technician.new(technician_params)
    if @technician.save
      flash[:success] = 'Thank you for Registering!'
      redirect_to @technician
    else

      render 'new'
    end
  end

  def edit
  end

  def delete
  end

  private
    def technician_params
      params.require(:technician).permit(:name, :email, :password)
    end
end
