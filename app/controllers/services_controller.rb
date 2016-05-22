class ServicesController < ApplicationController
  def index
    @services = Service.where("location LIKE ?" , params[:search]).paginate( page: params[:page], per_page: 10)
  end

  def show
    @service = Service.find(params[:id])
    @map = "https://maps.googleapis.com/maps/api/staticmap?center=" + @service.latitude.to_s + "," + @service.longitude.to_s + "&zoom=16&size=800x400&markers=color:red%7C" + @service.latitude.to_s + "," + @service.longitude.to_s
  end
end