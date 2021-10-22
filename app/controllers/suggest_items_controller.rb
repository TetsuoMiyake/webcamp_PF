class SuggestItemsController < ApplicationController

  def create
    suggest_item = SuggestItem.new(suggest_item_params)
    suggest_item.save
    redirect_to customer_path(suggest_item.customer_id)
  end

  def update
    suggest_item = SuggestItem.find(params[:id])
    suggest_item.update(suggest_item_params)
    redirect_to customer_path(suggest_item.customer_id)
  end

  private
  def suggest_item_params
    params.require(:suggest_item).permit(:item_id, :customer_id, :status)
  end
end
