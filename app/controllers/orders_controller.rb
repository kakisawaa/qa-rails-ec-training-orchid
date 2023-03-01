class OrdersController < ApplicationController
  def show
    @order = Order.find_by(id: params[:id])
    if @order
      @order_details = OrderDetail.where(order_id: @order.id)
    end
  end
end
