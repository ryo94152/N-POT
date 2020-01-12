class CustomersController < ApplicationController

  def index
    @customers = Customer.all.order("han_code ASC").order("ten_code ASC")
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(save_params)
    if @customer.save
      redirect_to customers_path
    else
      redirect_to new_customer_path
    end
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    customer = Customer.find(params[:id])
    customer.update(save_params)
    redirect_to customers_path
  end

  def destroy
    customer = Customer.find(params[:id])
    customer.destroy
    redirect_to customers_path
  end

  private
  def save_params
    params.require(:customer).permit(:han_code,:han_name,:ten_code,:ten_name)
  end

end
