json.array!(@foods) do |food|
  json.extract! food, :id, :name, :description, :links
  json.url food_url(food, format: :json)
end
