class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  private
  def customer_params
    params.require(:customer).permit(:user_id, :name, :address, :postal_code, :telephone_number)
  end
end
