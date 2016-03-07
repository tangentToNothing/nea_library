json.array!(@materialtypes) do |materialtype|
  json.extract! materialtype, :id, :name
  json.url materialtype_url(materialtype, format: :json)
end
