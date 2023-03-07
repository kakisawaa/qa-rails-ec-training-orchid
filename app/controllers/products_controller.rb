class ProductsController < ApplicationController
  def index
    @products = Product.page(params[:page]).per(15).search(params[:search])
  end

  def show
    @product = Product.find_by(id: params[:id])
  end
end
