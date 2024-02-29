class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @items = Item.all.limit(4)
  end

  def dashboard
    @user = current_user
    @items = Item.all.where(user_id: current_user.id).limit(4) if current_user
    @bookings = Booking.all.where(user_id: current_user.id) if current_user
  end
end
