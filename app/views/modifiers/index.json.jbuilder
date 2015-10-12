json.array!(@modifiers) do |modifier|
  json.extract! modifier, :id, :name, :alt_name, :price, :use_extras
  json.url modifier_url(modifier, format: :json)
end
