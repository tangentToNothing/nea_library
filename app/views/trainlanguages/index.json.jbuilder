json.array!(@trainlanguages) do |trainlanguage|
  json.extract! trainlanguage, :id, :name
  json.url trainlanguage_url(trainlanguage, format: :json)
end
