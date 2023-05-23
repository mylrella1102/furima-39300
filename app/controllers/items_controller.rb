class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
  end

  def item_params
    params.require(:item).permit(:name, :info, :price, :image).merge(user_id: current_user.id)
  end
end
