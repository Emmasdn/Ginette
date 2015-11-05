class BookingsController < ApplicationController

  before_action :set_booking, only: [:destroy, :show]
  before_action :set_annonce, only: [:new, :create, ]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.annonce = @annonce
    @booking.user = current_user
    @booking.save
      if @booking.save
        redirect_to booking_path(@booking)
      else
        render :new
      end
  end

  def show
    @time = @booking.finish_at - @booking.start_at
    @minutes = @time/60
    @hours = @minutes/60
    @total_price = @hours*(@booking.annonce.price)
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
    params.require(:booking).permit( :message, :start_at, :finish_at)
  end

end




