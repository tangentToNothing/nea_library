json.array!(@targetgroups) do |targetgroup|
  json.extract! targetgroup, :id, :name
  json.url targetgroup_url(targetgroup, format: :json)
end
