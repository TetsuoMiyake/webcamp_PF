class SuggestItemsController < ApplicationController
  def create
    suggest_item = SuggestItem.new(suggest_item_params)
    if suggest_item.save
      redirect_to customer_path(suggest_item.customer_id)
    else
      @customer = Customer.find(suggest_item.customer_id)
      suggest_items = SuggestItem.all
      @suggest_items = @customer.suggest_items
      @suggest_item = SuggestItem.new
      render 'customers/show'
    end
  end

  def update
    suggest_item = SuggestItem.find(params[:id])
    suggest_item.update(suggest_item_params)
    redirect_to customer_path(suggest_item.customer_id)
  end

  def destroy
    suggest_item = SuggestItem.find(params[:id])
    suggest_item.destroy
    redirect_to customer_path(suggest_item.customer_id)
  end

  private

  def suggest_item_params
    params.require(:suggest_item).permit(:item_id, :customer_id, :status)
  end

  def customer_params
    params.require(:customer).permit(:user_id, :name, :address, :postal_code, :telephone_number)
  end
end
