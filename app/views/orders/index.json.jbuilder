json.array!(@orders) do |order|
  json.extract! order, :id, :user_id, :address_id, :date_ordered, :date_processed, :date_shipped
  json.url order_url(order, format: :json)
end
