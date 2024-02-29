class ItemsController < ApplicationController
  # before_action :configure_permitted_parameters, if: :devise_controller?

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save

      redirect_to root_path(@items)
    else
      render :new, status: :unprocessable_entity
    end
     # Will raise ActiveModel::ForbiddenAttributesError
  end

  def show
    @item = Item.find(params[:id])
    @booking = @item.bookings.build

  end

  def index
    @items = Item.all
  end

  def item_params
    params.require(:item).permit(:name, :price, :description, :location, :photo)
  end
end


