class UsersController < ApplicationController
  def show
    if params[:id]
      @user = User.find(params[:id])
    else
      @user = current_user
    end

    @item = Item.new
  end

  def new
    @user = User.new
  end
end
