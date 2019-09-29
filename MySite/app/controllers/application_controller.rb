class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :set_current_user, :authenticate!
  protected
  
  def set_current_user
    @current_user = Moviegoer.where(id: session[:user_id]).first
  end
  
  

  def authenticate!
    unless @current_user
      #redirect_to OmniAuth.login_path(:provider)
    end
  end
end
