class BookingsController < ApplicationController

  before_action :set_annonce, only: [:show, :create, :new]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
      if @booking.save
        redirect_to booking_path(booking)
      else
        render :new
      end
  end

  def show

  end

  def destroy
    @annonce.delete
    redirect_to root_path
  end

  private

  def set_annonce
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit( :annonce_id, :adresse, :price, :description, :child_number, :user_id)
  end

end

t.integer  "user_id"
    t.integer  "annonce_id"
    t.boolean  "accepted"
    t.datetime "start_at"
    t.datetime "finish_at"
    t.text     "message"
