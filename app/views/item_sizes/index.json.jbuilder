json.array!(@item_sizes) do |item_size|
  json.extract! item_size, :id, :name, :price, :extras, :row_order, :item_id
  json.url item_size_url(item_size, format: :json)
end
