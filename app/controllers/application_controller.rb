class ApplicationController < ActionController::Base
  def require_login
    @user = User.find_by(id: session[:user_id])
    if !@user
      head :unauthorized
    end
  end
end
