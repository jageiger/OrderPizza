json.array!(@taxes) do |tax|
  json.extract! tax, :id, :name, :amount, :default
  json.url tax_url(tax, format: :json)
end
