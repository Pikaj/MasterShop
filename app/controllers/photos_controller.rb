class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    photo = Photo.new(params.require(:photo).permit(:image, :product_id)))
    if photo.save 
      render :json => photo, :status => :created
    else
      render :json => photo.errors, :status => :unprocessable_entity
    end
  end

  def update
    photo = Photo.find(params[:id])
    if photo.update_attributes(params.require(:photo).permit(:image, :product_id)))
      render :json => photo, :status => :ok
    else
      render :json => photo.errors, :status => :unprocessable_entity
    end
  end

   def destroy
    photo = Photo.find(params[:id])
    if photo.destroy
      render :json => photo, :status => :ok
    else
      render :json => photo.errors, :status => :unprocessable_entity
    end
  end
end
