json.array!(@veggies) do |veggy|
  json.extract! veggy, :id, :name, :price, :description
  json.url veggy_url(veggy, format: :json)
end
