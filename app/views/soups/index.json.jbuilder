json.array!(@soups) do |soup|
  json.extract! soup, :id, :name, :size, :price
  json.url soup_url(soup, format: :json)
end
