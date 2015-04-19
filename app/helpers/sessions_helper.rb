module SessionsHelper
def logged_in?
  session[:tutor_id] != nil
end
end
