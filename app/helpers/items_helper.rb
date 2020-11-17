module ItemsHelper
  def item_params
    params.require(:item).permit(:name, :model, :reviews, :price)
  end
end
