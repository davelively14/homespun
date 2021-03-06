json.array!(@stores) do |store|
  json.extract! store, :id, :name, :description, :slug
  json.url store_url(store, format: :json)
end
