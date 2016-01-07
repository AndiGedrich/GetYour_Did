class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
  end

  def new
    @technician_id = params[:id]
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
    params.require(:appointment).permit(:technician_id, :service_id, :date, :time)
    end
end
