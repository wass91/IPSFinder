json.array!(@ips) do |ip|
  json.extract! ip, :id, :nombre, :longitud, :latitud, :horario_atencion
  json.url ip_url(ip, format: :json)
end
