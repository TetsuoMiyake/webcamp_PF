class Admin::CustomersController < ApplicationController

  before_action :authenticate_admin!, except: [:top]

  def index
    @customers = Customer.page(params[:page])
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
    redirect_to admin_user_path(customer.user_id)
  end

  private
  def customer_params
    params.require(:customer).permit(:user_id, :name, :address, :postal_code, :telephone_number)
  end

end
