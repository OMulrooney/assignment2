class ProductsController < ApplicationController
  def new
  end

  def index
  end

  def show
  end

  def create
  	render plain: params[:product].inspect
  end
end
