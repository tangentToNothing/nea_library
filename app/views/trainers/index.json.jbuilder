json.array!(@trainers) do |trainer|
  json.extract! trainer, :id, :title_id, :name_first, :name_last, :gender, :based_in, :city, :mepi_training, :mepi_trained, :phone, :email, :website, :experience, :specialty_id, :additional
  json.url trainer_url(trainer, format: :json)
end
