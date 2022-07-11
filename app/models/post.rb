class Post < ApplicationRecord
  belongs_to :animal
  has_rich_text :description
end
