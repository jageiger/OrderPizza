json.array!(@applied_mod_groups) do |applied_mod_group|
  json.extract! applied_mod_group, :id, :modifier_group_id, :item_id
  json.url applied_mod_group_url(applied_mod_group, format: :json)
end
