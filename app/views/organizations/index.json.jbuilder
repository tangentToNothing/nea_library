json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name, :contact, :isactive
  json.url organization_url(organization, format: :json)
end
