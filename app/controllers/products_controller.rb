class ProductsController < ApplicationController

  def index
    render :json => Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params.require(:product).permit(:name, :price, :description))
    if @product.save 
      render :json => @product, :status => :created
    else
      render :json => @product.errors, :status => :unprocessable_entity
    end
  end

  def update
    product = Product.find(params[:id])
    if product.update_attributes(params.require(:product).permit(:name, :price, :description))
      render :json => product, :status => :ok
    else
      render :json => product.errors, :status => :unprocessable_entity
    end
  end

  def destroy
    product = Product.find(params[:id])
    if product.destroy
      render :json => product, :status => :ok
    else
      render :json => product.errors, :status => :unprocessable_entity
    end
  end
end
