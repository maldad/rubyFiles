class Product < ApplicationRecord
  #valida algunas cosas que se llamen title, description, image_url
  validates :title, :description, :image_url, presence: true
  
  #valida alguna cosa que se llame price
  validates :price, numericality: {greater_than_or_equal_to: 0.01}

  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }
end
