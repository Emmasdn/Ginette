class BookingsController < ApplicationController


  before_action :set_booking, only: [:destroy, :show, :edit, :update]
  before_action :set_annonce, except: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: :show

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

  def edit
    @annonce = @booking.annonce
  end

  def update
    @booking.update(booking_params)
    if @booking.save
      redirect_to annonces_path
    else
      render :edit
    end
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




