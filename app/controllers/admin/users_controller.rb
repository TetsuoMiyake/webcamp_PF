class Admin::UsersController < ApplicationController
  before_action :authenticate_admin!, except: [:top]

  def index
    @users = User.page(params[:page])
  end

  def show
    @user = User.find(params[:id])
    @customers = Customer.all
    @customers = @user.customers
  end

  private

  def user_params
    params.require(:user).permit(:name, :number)
  end
end
