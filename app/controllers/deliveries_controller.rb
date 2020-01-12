class DeliveriesController < ApplicationController
  def index
    @deliveries = Delivery.all
    @stocks = Stock.all
    @customer = Customer.all
  end

  def new
    @delivery = Delivery.new
    @stocks = Stock.where(status: '1')
    @customers = Customer.all.order("han_code ASC")
  end

  def create
    # binding.pry
    @delivery = Delivery.new(save_params)
    if @delivery.save
      Stock.find(@delivery.stock_id).update(:status => "3")
      redirect_to new_delivery_path 
    else
      redirect_to root_path
    end
  end

  private
  def save_params
    params.require(:delivery).permit(:han_year,:han_month,:han_day,:customer_id,:stock_id,:price)
  end

end
