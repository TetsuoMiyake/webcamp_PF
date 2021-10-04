class Admin::CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    customer = Customer.new(customer_params)
    customer.save
    redirect_to admin_customer_path(customer.id)
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    customer = Customer.find(params[:id])
    customer.update(customer_params)
    redirect_to admin_customer_path(customer.id)
  end

  private
  def customer_params
    params.require(:customer).permit(:user_id, :name, :address, :postal_code, :telephone_number)
  end

end
