class BookingsController < ApplicationController

  before_action :set_booking, only: [:destroy]
  before_action :set_annonce

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.annonce = @annonce
      if @booking.save
        redirect_to booking_path(@booking)
      else
        render :new
      end
  end

  def show

  end

  def destroy
    @booking.delete
    redirect_to root_path
  end

  private
  def set_booking
    @booking = Booking.find(params[:id])
  end
  def set_annonce
    @annonce = Annonce.find(params[:annonce_id])
  end
  def booking_params
    params.require(:booking).permit( :child_number)
  end

end

