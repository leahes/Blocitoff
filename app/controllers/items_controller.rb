class ItemsController
  def create
    @item = Item.new

    if @item.save
      flash[:notice] = "The item was added to your to-do list."
      redirect_to @item
    else
      flash[:error] = "There was a problem adding to your list."
      redirect_to :new
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
end
