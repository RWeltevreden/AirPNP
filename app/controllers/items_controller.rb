class ItemsController < ApplicationController
  # before_action :configure_permitted_parameters, if: :devise_controller?

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save

      redirect_to dashboard_path
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
    if params[:query].present?
      @items = Item.search(params[:query])
    else
      @items = Item.all
    end
  end

  def item_params
    params.require(:item).permit(:name, :price, :description, :location, :photo)
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to dashboard_path(@item)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to dashboard_path, status: :see_other
  end
end

  # def configure_permitted_parameters
  #   # For additional fields in app/views/devise/registrations/new.html.erb
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:photo])

  #   # For additional in app/views/devise/registrations/edit.html.erb
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  # end
