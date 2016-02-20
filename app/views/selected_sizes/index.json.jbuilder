json.array!(@selected_sizes) do |selected_size|
  json.extract! selected_size, :id, :cart_item_id, :item_size_id
  json.url selected_size_url(selected_size, format: :json)
end
