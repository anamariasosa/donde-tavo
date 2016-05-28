class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  # Validations
  validate :dont_add_products_on_sunday
  validates_presence_of :name, :price, :quantity, :image
  validates_numericality_of :price, :quantity
  validates :quantity, numericality: { only_integer: true, greater_than: 0 }
  validates :price, length: { minimum: 4 }
  validates :name, uniqueness:true

  # Associations
  belongs_to :category
  belongs_to :supplier

  def dont_add_products_on_sunday
    t = Time.new
    if t.saturday? || t.sunday?
      errors.add(:error, ": No puede añadir productos los fines de semana")
    end
  end


end
