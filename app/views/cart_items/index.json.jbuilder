json.array!(@cart_items) do |cart_item|
  json.extract! cart_item, :id, :user_id, :order_id, :item_id, :price, :quantity, :special_instructions
  json.url cart_item_url(cart_item, format: :json)
end
