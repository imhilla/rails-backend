class ItemsController < ApplicationController
  include ItemsHelper
  def index
    @items = Item.all
    render json: @items
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
  end
end
