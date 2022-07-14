class Post < ApplicationRecord
  include Discard::Model
  validates :user_id, presence: true
  validates :animal, presence: true
  belongs_to :animal
  belongs_to :user
  has_rich_text :description
  has_many :pictures, dependent: :destroy
  accepts_nested_attributes_for :pictures, allow_destroy: true
  enum :sexuality, %i[ male female unknown ]
  enum :size, %i[ small medium large ]
  enum :status, %i[ pending adopted ]
end
