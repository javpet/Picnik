class Item < ApplicationRecord

  has_many :category_items
  has_many :categories, through: :category_items
  # Category items model basically sits in between Item and Category models to make the connection

  validates :title, presence: true;

  mount_uploader :image, ImageUploader

end
