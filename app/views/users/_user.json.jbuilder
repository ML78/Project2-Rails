json.extract! user, :id, :name, :email, :image, :password_digest, :location, :admin, :created_at, :updated_at
json.url user_url(user, format: :json)
