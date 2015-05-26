json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :nombre
  json.url servicio_url(servicio, format: :json)
end
