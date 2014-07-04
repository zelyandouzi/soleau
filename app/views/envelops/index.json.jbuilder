json.array!(@envelops) do |envelop|
  json.extract! envelop, :id, :name, :description, :picture
  json.url envelop_url(envelop, format: :json)
end
