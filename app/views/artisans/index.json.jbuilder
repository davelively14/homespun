json.array!(@artisans) do |artisan|
  json.extract! artisan, :id, :role, :approved
  json.url artisan_url(artisan, format: :json)
end
