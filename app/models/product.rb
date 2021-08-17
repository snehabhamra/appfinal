class Product < ApplicationRecord
  belongs_to :buyer, optional: true
  belongs_to :seller
  has_one_attached :picture

  validates_presence_of :name, presence: true
  validates_presence_of :Description, presence: false
  validates_presence_of :Price, presence: true
  validates_presence_of :Category, presence: true
  validates_presence_of :Picture, presence: true
end