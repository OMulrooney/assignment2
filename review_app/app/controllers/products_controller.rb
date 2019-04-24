class ProductsController < ApplicationController

  before_action :authorize, :only=> [:create, :new]

  def new
  end

  def index
  	@products = Product.all
  end

  def show
  	@product = Product.find(params[:id])
  end

  def create
  	@product=Product.new(product_params)
  	@product.save
  	redirect_to @product
  end

  def search
    @products = if params[:term]
      Product.where("name LIKE ? OR brand LIKE ?", "%#{params[:term]}", "%#{params[:term]}")
    else
      Product.all
    end
  end

  private
  def product_params
  	params.require(:product).permit(:name, :brand, :averageCost, :category, :releaseDate, :description, :productImage)
  end
end
