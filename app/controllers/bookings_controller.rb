class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.item = Item.find(params[:item_id])
    @booking.user = current_user


    if @booking.save
      redirect_to @booking.item , notice: 'Booking was successfully created.'
      # redirect_to booking_path(@booking)
    else
      render 'items/show'
    end
  end


  def index
    @bookings = Booking.all
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
