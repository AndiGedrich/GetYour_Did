class AppointmentsController < ApplicationController

  def new
    @technician_id = params[:id]
    @appointment = Appointment.new
  end

  def index
    @appointments = appointment.booked == true
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
    else
      @paginate = true
      @appointments = Appointment.page(params[:page]).per(10).padding(0)
    end
  end


    #@appointments = Appointment.all
    #@date = params[:month] ? Date.parse(params[:month]) : Date.today
  #end


  def show
    @appointment = Appointment.find(params[:id])
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      flash[:success] = "Added Appointment"
      redirect_to appointment_path(@appointment)
    else
      render :new
    end
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    if @appointment.update_attributes(appointment_params)
      flash[:success] = "Updated Appointment"
      redirect_to @appointment
    else
      render 'edit'
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def bookAppt
    appointment = Appointment.find(params[:id][:booked])
    user = current_user
    appointment.users << user
    flash[:success] = "Appointment Booked!"
    params[:booked]=true
    redirect_to appointments_path
  end

  def cancelAppt
    appointment = Appointment.find(params[:id])
    user = current_user
    if appointment.users.where(:id => user.id).any?
      appointment.users.delete(user.id)
      params[:booked] = false


  def delete
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to technicians_edit_path(params[:id])
  end

    def appointment_params
    params.require(:appointment).permit(:technician_id, :service_id, :date, :time)
    end
end
