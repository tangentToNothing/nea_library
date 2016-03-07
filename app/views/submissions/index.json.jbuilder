json.array!(@submissions) do |submission|
  json.extract! submission, :id, :personname, :position, :organization_id, :neworg, :email, :phone, :project_id, :newproj
  json.url submission_url(submission, format: :json)
end
