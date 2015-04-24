json.array!(@specials) do |special|
  json.extract! special, :id, :name, :price, :description
  json.url special_url(special, format: :json)
end
