class PicturesController < ApplicationController

  def create
    @picture = Picture.new(image_params)
    if @picture.save
      notice: '画像が保存されました'
    else
      flash.now[:alert] = 'メッセージを入力してください。'
    end
  end

  private

  def image_params
    params.require(:picture).permit(:image)
  end
end
