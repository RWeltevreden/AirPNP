class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @items = Item.all.limit(4)
  end

  def search
    @items = []

    if params[:query].present?
      @results = PgSearch.multisearch(params[:query])
      @results.each do |result|
        if result.searchable_type == "Item"
          @item = Item.find(result.searchable_id)
          @items.push(@item)
        end
      end
    end
  end


  def dashboard
    @user = current_user
    @items = @user.items
    @bookings = @user.bookings
  end

end
