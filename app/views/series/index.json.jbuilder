json.array!(@series) do |series|
  json.extract! series, :id, :name, :body, :nid, :pnid, :language, :tnid
  json.url series_url(series, format: :json)
end
