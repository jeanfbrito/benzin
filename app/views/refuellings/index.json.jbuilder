json.array!(@refuellings) do |refuelling|
  json.extract! refuelling, :id, :date, :mileage, :liter_price, :liters, :gas_station, :average_consumption, :traveled_mileage, :total_value, :vehicle_id
  json.url refuelling_url(refuelling, format: :json)
end
