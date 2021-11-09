class CustomersController < ApplicationController
  def index
    @customers = Customer.page(params[:page])
  end

  def show
    @customer = Customer.find(params[:id])
    @suggest_item = SuggestItem.new
    suggest_items = SuggestItem.all
    @suggest_items = @customer.suggest_items
  end

  private

  def customer_params
    params.require(:customer).permit(:user_id, :name, :address, :postal_code, :telephone_number)
  end
end
