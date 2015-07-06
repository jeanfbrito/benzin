json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :numberplate, :brand, :model, :fabrication
  json.url vehicle_url(vehicle, format: :json)
end
