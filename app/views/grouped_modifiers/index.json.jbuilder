json.array!(@grouped_modifiers) do |grouped_modifier|
  json.extract! grouped_modifier, :id, :modifier_group_id, :modifier_id
  json.url grouped_modifier_url(grouped_modifier, format: :json)
end
