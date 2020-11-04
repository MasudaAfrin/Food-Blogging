class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user.try(:authenticate, params[:password])
      session[:user_id] = user.id
      redirect_to display_index_url
    else
      redirect_to login_url, alert: "Invalid User Name Or Password! Try Again"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to display_index_path, notice: "Logged Out"
  end
end
