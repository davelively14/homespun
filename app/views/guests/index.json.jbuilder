json.array!(@guests) do |guest|
  json.extract! guest, :id, :email, :address_id
  json.url guest_url(guest, format: :json)
end
