json.array!(@chickens) do |chicken|
  json.extract! chicken, :id
  json.url chicken_url(chicken, format: :json)
end
