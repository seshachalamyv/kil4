json.array!(@his) do |hi|
  json.extract! hi, :id, :b
  json.url hi_url(hi, format: :json)
end
