json.array!(@store_users) do |store_user|
  json.extract! store_user, :id
  json.url store_user_url(store_user, format: :json)
end
