class PicturesController < ApplicationController
  def create
    @picture = Picture.new(image_params)
    @picture.save

    # @picture = Picture.new
    # image_params[:image].each do |t|
    #   @picture.image = t
    #   @picture.save
    # end

    # image_params[:image].each do |a|
    #   picture = Picture.new(image_params.merge(image: a))
    #   picture.save
    # end

  end

  private
  def image_params
    # params.permit(images:[])
    params.permit(:image)
  end
end
