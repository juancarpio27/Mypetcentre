class SessionsController < ApplicationController
  def new
    @service = Service.find(params[:service_id])
  end

  def create
    @service = Service.find(params[:service_id])
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to new_service_reservation_path(@service), :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end
