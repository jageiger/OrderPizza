json.array!(@categorizations) do |categorization|
  json.extract! categorization, :id, :category_id, :item_id
  json.url categorization_url(categorization, format: :json)
end
