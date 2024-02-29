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
  end

  def index
    @items = Item.all
  end

  def item_params
    params.require(:item).permit(:name, :price, :description, :location, :photo)
  end
end

  # def configure_permitted_parameters
  #   # For additional fields in app/views/devise/registrations/new.html.erb
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:photo])

  #   # For additional in app/views/devise/registrations/edit.html.erb
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  # end
