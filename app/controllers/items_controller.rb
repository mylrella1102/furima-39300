class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]

  def index
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def item_params
    params.require(:item).permit(:name, :info, :price, :image, :category_id, :sales_status_id, :fee_status_id, :prefecture_id, :scheduled_delivery_id).merge(user_id: current_user.id)
  end
end
