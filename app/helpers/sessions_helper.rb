module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def user_logged_in?
    !current_user.nil?
  end

  def log_in(technician)
    session[:technician_id] = technician.id
  end

  def current_technician
    @current_technician ||= Technician.find_by(id: session[:technician_id])
  end

  def technician_logged_in?
    !current_technician.nil?
  end

end
