class ItemsController < ApplicationController
  def create
    @item = Item.new
    @item.name = params[:item][:name]
    @item.user = current_user
    if @item.save
      flash[:notice] = "The item was added to your to-do list."
      redirect_to root_path
    else
      flash[:error] = "There was a problem adding to your list."
      redirect_to root_path
    end
  end

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end
end
