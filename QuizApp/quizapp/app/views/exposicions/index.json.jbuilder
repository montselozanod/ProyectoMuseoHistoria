json.array!(@exposicions) do |exposicion|
  json.extract! exposicion, :id, :name, :description, :museo_id
  json.url exposicion_url(exposicion, format: :json)
end
