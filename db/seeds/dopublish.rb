



allresources = Resource.where('published_at is NULL')
pubdate = rand(10.years).seconds.ago
allresources.each do |r|
  r.published_at = pubdate
  r.save!

end




