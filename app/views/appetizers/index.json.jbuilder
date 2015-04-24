json.array!(@appetizers) do |appetizer|
  json.extract! appetizer, :id, :name, :price, :description
  json.url appetizer_url(appetizer, format: :json)
end
