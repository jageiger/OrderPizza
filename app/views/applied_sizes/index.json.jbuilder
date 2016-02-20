json.array!(@applied_sizes) do |applied_size|
  json.extract! applied_size, :id, :item_id, :item_size_id
  json.url applied_size_url(applied_size, format: :json)
end
