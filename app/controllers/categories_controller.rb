class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    category = Category.new(params.require(:category).permit(:name))
    if category.save 
      render :json => category, :status => :created
    else
      render :json => category.errors, :status => :unprocessable_entity
    end
  end

  def update
    category = Category.find(params[:id])
    if category.update_attributes(params.require(:category).permit(:name))
      render :json => category, :status => :ok
    else
      render :json => category.errors, :status => :unprocessable_entity
    end
  end

   def destroy
    category = Category.find(params[:id])
    if category.destroy
      render :json => category, :status => :ok
    else
      render :json => category.errors, :status => :unprocessable_entity
    end
  end
end
