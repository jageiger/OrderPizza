json.array!(@applied_labels) do |applied_label|
  json.extract! applied_label, :id, :item_id, :label_id, :daily_special, :day
  json.url applied_label_url(applied_label, format: :json)
end
