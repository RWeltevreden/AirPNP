class ItemsController < ApplicationController
  def item_params
    params.require(:item).permit(:name, :photo)
  end
end
