json.extract! user, :id, :username, :email, :crypted_password, :password_salt, :persistence_token, :created_at, :updated_at
json.url user_url(user, format: :json)
