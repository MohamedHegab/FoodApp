json.array!(@items) do |item|
  json.extract! item, :id, :name, :cost, :measurment_unit
  json.url item_url(item, format: :json)
end
