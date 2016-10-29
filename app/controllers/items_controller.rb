class ItemsController < ApplicationController
  def create
    @item = Item.new
    @item.name = params[:item][:name]
    @item.user = current_user

    if @item.save
      flash[:notice] = 'The item was added to your to-do list.'
    else
      flash[:error] = 'There was a problem adding to your list.'
    end

    redirect_to root_path
  end

  def destroy
    @item = Item.find(params[:id])

    if @item.destroy
      flash[:notice] = 'Deleted.'
    else
      flash[:error] = 'There was an Error. Please try again.'
    end

    respond_to do |format|
      format.html { redirect_to user_path(current_user) }
      format.js
    end
  end
end
