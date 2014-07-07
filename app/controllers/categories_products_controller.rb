class CategoriesProductsController < ApplicationController
  def new
    @categoriesProducts = CategoriesProducts.new
  end

  def create
    categoriesProducts = CategoriesProducts.new(params.require(:categoriesProducts).permit(:product_id,:category_id))
  end

  def update
    categoriesProducts = Photo.find(params[:id])
    categoriesProducts.update_attributes(params.require(:categoriesProducts).permit(:product_id,:category_id)))
  end

  def destroy
    @categoriesProducts.destroy
  end
end
