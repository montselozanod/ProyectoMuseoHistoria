json.array!(@trypoints) do |trypoint|
  json.extract! trypoint, :id
  json.url trypoint_url(trypoint, format: :json)
end
