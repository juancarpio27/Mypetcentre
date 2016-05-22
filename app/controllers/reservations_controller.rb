class ReservationsController < ApplicationController

  def new
    @service = Service.find(params[:service_id])
    @reservation = Reservation.new
  end

  def create
    @service = Service.find(params[:service_id])
    @reservation = Reservation.create(reservation_params)
    @reservation.service_id = @service.id
    @reservation.price = @service.price
    @reservation.status = 0
    @reservation.user_id = 1
    if @reservation.save
      redirect_to service_reservation_url(@service,@reservation)
    else
      render "new"
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  protected

    def reservation_params
      params.require(:reservation).permit(:deliver, :phone, :quantity, :pet_type, :pet_size, :start, :end, :card_name, :card_number, :exp_month, :exp_year, :cvv)
    end

end