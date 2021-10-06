class Admin::UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    customers = Customer.all
    @customers = @user.customers
  end

  private
  def user_params
    params.require(:user).permit(:name, :number)
  end

end
