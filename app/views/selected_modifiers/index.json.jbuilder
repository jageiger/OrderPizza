json.array!(@selected_modifiers) do |selected_modifier|
  json.extract! selected_modifier, :id, :item_id, :cart_item_id, :modifier_id
  json.url selected_modifier_url(selected_modifier, format: :json)
end
