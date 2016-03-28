json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :name, :address, :phone_number
  json.url supplier_url(supplier, format: :json)
end
