class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_item ,only: [:show, :edit, :update]
  def index
    @items = Item.all.order('created_at DESC')
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
    move_to_index unless current_user.id == @item.user_id
  end

  def update
    if @item.update(item_params)
      redirect_to item_path
    else
      render :edit
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :info, :price, :image, :category_id, :sales_status_id, :fee_status_id, :prefecture_id,
                                 :scheduled_delivery_id).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to root_path
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
