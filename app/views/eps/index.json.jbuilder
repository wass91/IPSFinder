json.array!(@eps) do |ep|
  json.extract! ep, :id, :nombre
  json.url ep_url(ep, format: :json)
end
