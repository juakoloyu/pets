class Animal < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :posts
  has_one_attached :image
end
