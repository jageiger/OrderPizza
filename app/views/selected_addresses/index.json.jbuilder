json.array!(@selected_addresses) do |selected_address|
  json.extract! selected_address, :id, :address_id, :user_id, :order_id
  json.url selected_address_url(selected_address, format: :json)
end
