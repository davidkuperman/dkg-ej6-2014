json.array!(@salesreps) do |salesrep|
  json.extract! salesrep, :name, :lastname, :territory, :quota
  json.url salesrep_url(salesrep, format: :json)
end