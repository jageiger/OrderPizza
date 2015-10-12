json.array!(@addresses) do |address|
  json.extract! address, :id, :user_id, :address_one, :address_two, :address_three, :address_four, :zipcode, :apartment, :apartment_number, :building_number, :gate_code, :special_instructions
  json.url address_url(address, format: :json)
end
