class ServicesController < ApplicationController
  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to new_appointment_path(@appointment)
    else
      render :new
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def delete
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to new_appointment_path(params[:id])
  end

    def service_params
    params.require(:service).permit(:name, :length_mins, :category_id)
    end
end
