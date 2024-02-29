class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @items = Item.all.limit(4)
  end

  def dashboard
    @user = current_user
    @items = @user.items
    @bookings = @user.bookings
  end
end
