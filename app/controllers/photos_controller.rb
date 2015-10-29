class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params[:id]})
    @photo_source = @photo.source
    @photo_caption = @photo.caption
    @photo_id = @photo.id
  end

  def new_form
  end

  def create_row
    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save
    redirect_to("http://localhost:3000")
  end

  def delete_photo
    delete = Photo.find_by({ :id => params[:id]})
    delete.destroy
    delete.save
  end

  def edit_form
    @edit = Photo.find_by({ :id => params[:id]})
  end

  def update_row
    @edit = Photo.find_by({ :id => params[:id]})
    @edit.caption = params[:the_caption]
    @edit.source = params[:the_source]
    @edit.save
    redirect_to("http://localhost:3000/photos")
  end
end
