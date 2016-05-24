class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  validates_presence_of :name, :price, :quantity, :image
  validates_numericality_of :price
  validates :quantity, numericality: { only_integer: true, greater_than: 0 }
  belongs_to :category
  belongs_to :supplier
end
