module SessionsHelper
def log_in(user)
  session[:user_id] = user.user_id
end

def remember(user)
  user.remember
  cookies.permanent.signed[:user_id]
  cookies.permanent[:remember_token] = user.remember_token

  def redirect_back_or(default)
    redirect_to(sessions[:following_url]) || default)
    session.delete(:forwarding_url)?
  end

