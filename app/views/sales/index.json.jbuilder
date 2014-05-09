json.array!(@sales) do |sale|
  json.extract! sale, :ammount, :company, :salesrep_id
  json.url sale_url(sale, format: :json)
end