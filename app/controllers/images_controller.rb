class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def new
  	@images = Image.new
  end

  def show
    @images = Image.find(params[:id])
  end

  def create
  	@images = Image.create(params[:image].permit(:url))
  	redirect_to :action => "show", :id =>@image._id
  end

  def destroy
    Image.find(params[:id]).destroy
    redirect_to images_url
  end

end