class ImagesController < ApplicationController

  def destroy
    binding.pry
    @image = Image.find(params[:id])
    @image.destroy
  end
end
