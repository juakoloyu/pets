class Post < ApplicationRecord
  include Discard::Model
  validates :user_id, :animal_id, presence: true
  belongs_to :animal
  belongs_to :user
  has_rich_text :description
  has_many :pictures, dependent: :destroy
  accepts_nested_attributes_for :pictures, allow_destroy: true
end
