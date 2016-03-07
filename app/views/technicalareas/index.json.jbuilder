json.array!(@technicalareas) do |technicalarea|
  json.extract! technicalarea, :id, :name
  json.url technicalarea_url(technicalarea, format: :json)
end
