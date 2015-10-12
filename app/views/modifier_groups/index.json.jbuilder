json.array!(@modifier_groups) do |modifier_group|
  json.extract! modifier_group, :id, :name
  json.url modifier_group_url(modifier_group, format: :json)
end
