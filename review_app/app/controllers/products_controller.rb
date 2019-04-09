class ProductsController < ApplicationController
  def new
  end

  def index
  end

  def show
  	@product = Product.find(params[:id])
  end

  def create
  	@product=Product.new(product_params)
  	@product.save
  	redirect_to @product
  end

  private
  def product_params
  	params.require(:product).permit(:name, :brand, :averageCost, :category, :releaseDate, :description, :productImage)
  end
end
