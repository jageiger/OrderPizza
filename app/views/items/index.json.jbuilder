json.array!(@items) do |item|
  json.extract! item, :id, :stock, :name, :alt_name, :description, :price, :cost, :quantity, :product_code, :SKU, :extras_price, :fancy_interface, :interface
  json.url item_url(item, format: :json)
end
