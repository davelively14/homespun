json.array!(@addresses) do |address|
  json.extract! address, :id, :user_id, :street1, :street2, :city, :city, :state, :zip
  json.url address_url(address, format: :json)
end
