class OrdersController < ApplicationController
  def show
    @order = Order.find_by(id: params[:id])
    if @order
      @order_details = OrderDetail.all
    end
  end
end
