class Supplier < ActiveRecord::Base
  has_many :products, :dependent => :destroy
  validates :name, uniqueness: true
end
