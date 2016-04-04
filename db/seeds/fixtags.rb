

old446 = TagResources.where('tag_id = ?', 446 ) #Activism; Advocacy; CSO/NGOs; Civic Engagement; De...



old491 = TagResources.where('tag_id = ?', 491 ) #Activists


old443 = TagResources.where('tag_id = ?', 443 ) #Advocacy; Accountability/Transparency; Campaigns; ...



old236 = TagResources.where('tag_id = ?', 236 ) #Algeria


old134 = TagResources.where('tag_id = ?', 134 ) #Bahrain


old438 = TagResources.where('tag_id = ?', 438 ) #Business Planning; Trade


old456 = TagResources.where('tag_id = ?', 456 ) #Civic Education


old506 = TagResources.where('tag_id = ?', 506 ) #Communication; Media Outreach



old455 = TagResources.where('tag_id = ?', 455 ) #CSO Capacity Building/Advocacy



old429 = TagResources.where('tag_id = ?', 429 ) #CSO/NGOs



old437 = TagResources.where('tag_id = ?', 437 ) #CSO/NGOs



old451= TagResources.where('tag_id = ?', 451 ) #Democracy; Governance



old304 = TagResources.where('tag_id = ?', 304 ) #Egypt

old432 = TagResources.where('tag_id = ?', 432 ) #Election Management; Anti-Corruption

old526 = TagResources.where('tag_id = ?', 526 ) #Entrepeneurship
old516 = TagResources.where('tag_id = ?', 516 ) #Entrepreneurship; CSO Capacity Building/Advocacy

old481 = TagResources.where('tag_id = ?', 481 ) #Information Technology

old234 = TagResources.where('tag_id = ?', 234 ) #Iraq
old428 = TagResources.where('tag_id = ?', 428 ) #Israel
old233 = TagResources.where('tag_id = ?', 233 ) #Jordan
old218 = TagResources.where('tag_id = ?', 218 ) #Lebanaon
old361 = TagResources.where('tag_id = ?', 361 ) #Libya
old474 = TagResources.where('tag_id = ?', 474 ) #Media
old184 = TagResources.where('tag_id = ?', 184 ) #Morocco
old135 = TagResources.where('tag_id = ?', 135 ) #Oman
old463 = TagResources.where('tag_id = ?', 463 ) #Organizational  Development

old465 = TagResources.where('tag_id = ?', 465 ) #Organizational  Development

old473 = TagResources.where('tag_id = ?', 473 ) #Palestine
old476 = TagResources.where('tag_id = ?', 476 ) #Political Participation
old132 = TagResources.where('tag_id = ?', 132 ) #Qatar
old373 = TagResources.where('tag_id = ?', 373 ) # Saudi Arabia
old496 = TagResources.where('tag_id = ?', 496 ) # SEcondary School Students
old468 = TagResources.where('tag_id = ?', 468 ) # Training of Trainers
old372 = TagResources.where('tag_id = ?', 372 ) #Tunisia
old430 = TagResources.where('tag_id = ?', 430 ) #UAE
old501 = TagResources.where('tag_id = ?', 501 ) #Univ Students
old160 = TagResources.where('tag_id = ?', 160 ) #Yemen














rset = oldtags.each do |ot|
  TechnicalareasResource.create([{nid: 75, tid: 9}])
  TargetgroupsResource.create([{nid: 88, tid: 76}])
end
