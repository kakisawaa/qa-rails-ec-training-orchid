class ProductsController < ApplicationController
  def index
    @products = Product.page(params[:page]).per(15).search(params[:product_name], params[:category_id])
  end

  def show
    @product = Product.find_by(id: params[:id])
  end
end
