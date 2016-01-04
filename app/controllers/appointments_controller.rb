class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      render :new
    end
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def delete
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to technicians_edit_path(params[:id])
  end

    def appointment_params
    params.require(:appointment).permit(:date, :time, :technician_id, :service_id)
    end
end
