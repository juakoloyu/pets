json.extract! post, :id, :description, :animal_id, :created_at, :updated_at
json.url post_url(post, format: :json)
json.description post.description.to_s
