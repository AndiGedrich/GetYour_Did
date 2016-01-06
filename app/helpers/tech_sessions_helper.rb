module TechSessionsHelper
  def log_in(technician)
    tech_session[:technician_id] = technician.id
  end

  def current_technician
    @current_technician ||= Technician.find(session[:user_id])
  end

  def logged_in?
    !current_technician.nil?
  end
end
