class Picture < ApplicationRecord
  # has_many_attached :images
  has_one_attached :image
end
