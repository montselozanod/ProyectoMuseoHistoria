json.array!(@museos) do |museo|
  json.extract! museo, :id, :name, :description, :imgURL
  json.url museo_url(museo, format: :json)
end
