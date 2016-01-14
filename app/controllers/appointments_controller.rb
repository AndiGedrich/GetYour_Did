class AppointmentsController < ApplicationController

  def index
    if params[:query] && params[:search]
      @paginate = true
      search_by = params[:search].to_sym
      query = params[:query]
      appointment_list = Appointment.all
      @appointments = []
      appointment_list.each do |appointment|
        if appointment[search_by].to_s.downcase.include? params[:query].to_s.downcase
          @appointments << appointment
        end
      end
    end
  else
    @paginate = true
    @courses = Course.page(params[:page]).per(10).padding(0)
  end
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
