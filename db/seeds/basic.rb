# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email





I18n.locale = :en
postone=Post.create(:title  => 'Globalize rocks!')

Post::Translation.create(:post_id => postone.id, :locale => "fr", :title => "French title")
Post::Translation.create(:post_id => postone.id, :locale => "ar", :title => "Arabic title")




@techs = [
    {"tid" => 9, "en" => "Business Environment", "ar" => "بيئة الأعمال", "fr" => "Environnement entrepreneurial"},
    {"tid" => 8, "en" => "CSO Capacity Building/Advocacy", "ar" => "بناء قدرات منظمات المجتمع المدني/كسب التأييد ", "fr" => "Renforcement des Capacités des Organisations de la Société Civile "},
    {"tid" => 3, "en" => "Civic Education", "ar" => "التربية المدنية", "fr" => "Éducation civique"},
    {"tid" => 433, "en" => "Education", "ar" => "التعليم", "fr" => "Éducation"},
    {"tid" => 5, "en" => "Elections", "ar" => "الانتخابات", "fr" => "Élections"},
    {"tid" => 11, "en" => "Employment Training", "ar" => "التدريب على العمل", "fr" => "Formation emploi"},
    {"tid" => 10, "en" => "Entrepreneurship", "ar" => "ريادة الأعمال", "fr" => "Développement des entreprises"},
    {"tid" => 2, "en" => "Human Rights", "ar" => "حقوق الانسان", "fr" => "Droits de l*777*Homme"},
    {"tid" => 4, "en" => "Media", "ar" => "وسائل الاعلام", "fr" => "Les médias"},
    {"tid" => 7, "en" => "Parliamentary Training", "ar" => "التدريب البرلماني", "fr" => "Formation parlementaire"},
    {"tid" => 6, "en" => "Political Parties", "ar" => "الأحزاب السياسية", "fr" => "Partis politiques"},
    {"tid" => 1, "en" => "Rule of Law", "ar" => "سيادة القانون", "fr" => "Etat de droit "}
]

@techs.each do |t|
  inum = Technicalarea.create(name: t['en'], tid: t['tid'] )
  trans = Technicalarea::Translation.create(:technicalarea_id => inum.id, :locale => "ar", :name => t['ar'])
  trans = Technicalarea::Translation.create(:technicalarea_id => inum.id, :locale => "fr", :name => t['fr'])
end









@groups = [

        
        
        {"tid" => 60, "en" => "Activists", "ar" => "نشطاء", "fr" => "Activistes "},
        {"tid" => 59, "en" => "Advocates", "ar" => "دعاة", "fr" => "Défenseurs"},
        {"tid" => 73, "en" => "Agriculture Sector", "ar" => "القطاع الزراعي", "fr" => "Secteur Agricole "},
        {"tid" => 147, "en" => "Business Community", "ar" => "مجتمع الأعمال", "fr" => "Communauté des affaires "},
        {"tid" => 106, "en" => "CSOs/NGOs", "ar" => "لمنظمات غيرالحكومية/منظمات المجتمع المدني ", "fr" => "Organisations de la société civile/ Organisations non gouvernementales "},
        {"tid" => 165, "en" => "Candidates", "ar" => "مرشحون سياسيون", "fr" => "Candidats "},
        {"tid" => 76, "en" => "Election Administrators", "ar" => "مدراء الحملات الانتخابية ", "fr" => "Administrateurs électoraux"},
        {"tid" => 168, "en" => "Entrepreneurs", "ar" => "رواد الأعمال", "fr" => "Entrepreneurs "},
        {"tid" => 63, "en" => "Financial Sector", "ar" => "العاملون في القطاع المصرفي والمالي", "fr" => "Practitiens du secteur financier "},
        {"tid" => 47, "en" => "Government", "ar" => "الحكومة ", "fr" => "Gouvernement "},
        {"tid" => 424, "en" => "Health Care Practitioners", "ar" => "مقدمو خدمات الرعاية الصحية", "fr" => "Praticiens des services de santé"},
        {"tid" => 417, "en" => "Job Seekers", "ar" => "الباحثون عن العمل", "fr" => "Chercheurs d’emploi"},
        {"tid" => 51, "en" => "Journalists", "ar" => "الصحفيون", "fr" => "Journalistes "},
        {"tid" => 140, "en" => "Judges", "ar" => "القضاة", "fr" => "Juges "},
        {"tid" => 122, "en" => "Law Students", "ar" => "طلاب القانون", "fr" => "Etudiants en Droit "},
        {"tid" => 419, "en" => "Legislators/Local Councilors", "ar" => "المشرعون/ﺃﻋﻀﺎﺀ المجالس المحلية", "fr" => "Législateurs/Conseillés locaux"},
        {"tid" => 56, "en" => "Media", "ar" => "وسائل الاعلام", "fr" => "Les médias"},
        {"tid" => 242, "en" => "Members of Parliament", "ar" => "أعضاء البرلمان", "fr" => "Membres du Parlement"},
        {"tid" => 320, "en" => "Parents", "ar" => "الأبوين", "fr" => "Parents"},
        {"tid" => 77, "en" => "Party Members", "ar" => "أعضاء الأحزاب", "fr" => "Membres du parti "},
        {"tid" => 167, "en" => "Political Parties", "ar" => "الأحزاب السياسية", "fr" => "Partis politiques "},
        {"tid" => 131, "en" => "Primary School Students", "ar" => "طلاب المدارس الابتدائية", "fr" => "Elèves de l*777*école primaire "},
        {"tid" => 319, "en" => "Project Managers", "ar" => "مدراء المشاريع ", "fr" => "Chefs de projet"},
        {"tid" => 138, "en" => "School Administrators", "ar" => "مدراء المدارس", "fr" => "Administrateurs scolaires"},
        {"tid" => 120, "en" => "Secondary School Students", "ar" => "طلاب المدارس الثانو", "fr" => "Elèves de l`école secondaire"},
        {"tid" => 53, "en" => "Teachers", "ar" => "المدرسون", "fr" => "Enseignants"},
        {"tid" => 328, "en" => "Trainers", "ar" => "المدربون", "fr" => "Formateurs"},
        {"tid" => 121, "en" => "University Students", "ar" => "طلاب الجامعة", "fr" => "Etudiants à l*777*Université"}
        





]

@groups.each do |g|
  inum = Targetgroup.create(name: g['en'], tid: g['tid'] )
  trans = Targetgroup::Translation.create(:targetgroup_id => inum.id, :locale => "ar", :name => g['ar'])
  trans = Targetgroup::Translation.create(:targetgroup_id => inum.id, :locale => "fr", :name => g['fr'])
end



@countries = [




    {"en" => "Qatar", "ar" => "قطر", "fr" => "Qatar "},
    {"en" => "Saudi Arabia", "ar" => "المملكة العربية السعودية", "fr" => "Arabie Saoudite"},
    {"en" => "Syria", "ar" => "سوريا", "fr" => "Syrie"},
    {"en" => "Tunisia", "ar" => "تونس", "fr" => "Tunisie "},
    {"en" => "United Arab Emirates", "ar" => "الإمارات العربية المتحدة", "fr" => "UAE"},
    {"en" => "West Bank/Gaza", "ar" => "الضفة الغربية/قطاع غزة", "fr" => "Cisjordanie/Bande de Gaza "},
    {"en" => "Yemen", "ar" => "اليمن", "fr" => "Yémen"},
    {"en" => "Germany", "ar" => "ألمانيا", "fr" => "Allemagne"},
    {"en" => "Turkey", "ar" => "تركيا", "fr" => "Turquie"},

    {"en" => "Mediterranean Region", "ar" => "منطقة البحر الأبيض المتوسط", "fr" => "Région de la Méditerranée"},
    {"en" => "Arabian Peninsula", "ar" => "شبه الجزيرة العربية", "fr" => "Péninsule Arabique"},
    {"en" => "All MEPI Region", "ar" => "الكل المنطقة MEPI", "fr" => "Tous Région MEPI"}
]
@countries.each do |c|
  inum = Country.create(name: c['en'])
  trans = Country::Translation.create(:country_id => inum.id, :locale => "ar", :name => c['ar'])
  trans = Country::Translation.create(:country_id => inum.id, :locale => "fr", :name => c['fr'])
end






@tags = [
    {"tid" => 405, "en" => "Accountability/Transparency", "ar" => "المساءلة/الشفافية  ", "fr" => "Responsabilité/Transparence"},
    {"tid" => 171, "en" => "Activism", "ar" => "التنشيط", "fr" => "Activisme "},
    {"tid" => 420, "en" => "Advocacy", "ar" => "كسب التأييد/الدعوة", "fr" => "Coalition d’intérêts"},
    {"tid" => 58, "en" => "Agriculture", "ar" => "الزراعة ", "fr" => "Coalition d’intérêts"},
    {"tid" => 431, "en" => "Anti-Corruption", "ar" => "مكافحة الفساد", "fr" => "Anti-Corruption"},
    {"tid" => 400, "en" => "Business Planning", "ar" => "تخطيط الأعمال", "fr" => "Planification d’entreprise"},
    {"tid" => 377, "en" => "CSO/NGO Laws", "ar" => "قوانين المنظمات غيرالحكومية ومنظمات المجتمع المدني ", "fr" => "Lois gouvernant les OSC/ONG"},
    {"tid" => 366, "en" => "CSO/NGO Management", "ar" => "دارة المنظمات غيرالحكومية ومنظمات المجتمع المدني ", "fr" => "Gestion des OSC/ONG"},
    {"tid" => 341, "en" => "Campaigns", "ar" => "لحملات الانتخابية ", "fr" => "Campagnes "},
    {"tid" => 472, "en" => "Censorship", "ar" => "الرقابة", "fr" => "La censure"},
    {"tid" => 467, "en" => "Coalitions", "ar" => "التحالفات", "fr" => "Coalitions"},
    {"tid" => 181, "en" => "Civic Engagement", "ar" => "المشاركة المدنية", "fr" => "Engagement civique"},
    {"tid" => 458, "en" => "Communication", "ar" => "التواصل", "fr" => "La Communication"},
    {"tid" => 374, "en" => "Conflict Resolution", "ar" => "حل النزاعات", "fr" => "Résolution de conflits"},
    {"tid" => 462, "en" => "Constitution", "ar" => "الدستور", "fr" => "Constitution"},
    {"tid" => 18, "en" => "Corporate Governance", "ar" => "حوكمة الشركات", "fr" => "Gouvernance d*777*entreprise "},
    {"tid" => 360, "en" => "Crime Prevention", "ar" => "منع الجريمة", "fr" => "Lutte contre le crime "},
    {"tid" => 177, "en" => "Democracy", "ar" => "الديمقراطية", "fr" => "Démocratie"},
    {"tid" => 396, "en" => "Development Theory", "ar" => "نظرية التنمية", "fr" => "Théorie de développement"},
    {"tid" => 79, "en" => "Election Management", "ar" => "إدارة الانتخابات", "fr" => "Gestion électorale "},
    {"tid" => 387, "en" => "English as a Second Language (ESL)", "ar" => "الإنجليزية كلغة ثانية", "fr" => "Anglais en seconde langue (ESL) "},
    {"tid" => 460, "en" => "Environment", "ar" => "البيئة", "fr" => "Environnement"},
    {"tid" => 388, "en" => "Equality", "ar" => "المساواة", "fr" => "Egalité"},
    {"tid" => 406, "en" => "Ethics", "ar" => "أخلاقيات المهنة", "fr" => "Etique"},
    {"tid" => 411, "en" => "Finance/Banking", "ar" => "الشؤون المالية /المصرفية", "fr" => "Finance/ Secteur bancaire"},
    {"tid" => 268, "en" => "Funding", "ar" => "التمويل", "fr" => "Financement"},
    {"tid" => 237, "en" => "Governance", "ar" => "الحوكمة", "fr" => "Gouvernance"},
    {"tid" => 418, "en" => "Health Awareness", "ar" => "التوعية الصحية", "fr" => "Sensibilisation à la santé"},
    {"tid" => 457, "en" => "Human Rights", "ar" => "حقوق الانسان", "fr" => "Droits de l*777*homme"},
    {"tid" => 287, "en" => "Information Technology (IT)", "ar" => "تقنية المعلومات", "fr" => "Informatique"},
    {"tid" => 359, "en" => "Investment", "ar" => "الاستثمار", "fr" => " Investissement"},
    {"tid" => 17, "en" => "Journalism", "ar" => "صحافة", "fr" => "Journalisme "},
    {"tid" => 327, "en" => "Judicial", "ar" => "قضائي", "fr" => " Judiciaire"},
    {"tid" => 386, "en" => "Laws/Legislation", "ar" => "القوانين/التشريعات", "fr" => "Lois/Législation"},
    {"tid" => 45, "en" => "Leadership", "ar" => "القيادة", "fr" => "Leadership "},
    {"tid" => 461, "en" => "MEPI Alumni Association Projects", "ar" => "مشاريع خريجي ميبي", "fr" => ""},
    {"tid" => 410, "en" => "Marketing/Branding", "ar" => "التسويق/ العلامات التجارية", "fr" => "Marketing/ Création de marque"},
    {"tid" => 365, "en" => "Media Outreach", "ar" => "التواصل الإعلامي", "fr" => "Sensibilisation des médias"},
    {"tid" => 385, "en" => "Minority Rights", "ar" => "حقوق الأقليات", "fr" => "Droits des minorités"},
    {"tid" => 471, "en" => "Mobile Phones", "ar" => "الهواتف النقالة", "fr" => "Téléphones portables (Mobile)"},
    {"tid" => 375, "en" => "Monitoring and Evaluation", "ar" => "المراقبة والتقييم", "fr" => "Suivi et évaluation"},
    {"tid" => 466, "en" => "Networking", "ar" => "الشبكات", "fr" => "Networking"},
    {"tid" => 465, "en" => "Organizational Development", "ar" => "التطوير التنظيمي", "fr" => "Développement organisationnel"},
    {"tid" => 32, "en" => "Political Particpation", "ar" => "المشاركة السياسية", "fr" => "Participation politique "},
    {"tid" => 470, "en" => "Privacy", "ar" => "الخصوصية", "fr" => "Intimité"},
    {"tid" => 116, "en" => "Professional Development", "ar" => "التنمية المهنية", "fr" => "Développement professionnel"},
    {"tid" => 326, "en" => "Project Management", "ar" => "إدارة المشاريع", "fr" => "Gestion de projet"},
    {"tid" => 86, "en" => "Risk Management", "ar" => "إدارة المخاطر", "fr" => "Management des risques "},
    {"tid" => 367, "en" => "School Programs", "ar" => "البرامج المدرسية", "fr" => "Programmes scolaires"},
    {"tid" => 362, "en" => "Security", "ar" => "الأمن", "fr" => "Sécurité"},
    {"tid" => 425, "en" => "Small and Medium Enterprises (SMEs)", "ar" => "الشركات الصغيرة والمتوسطة", "fr" => "Petites et moyennes entreprises (PME)"},
    {"tid" => 395, "en" => "Social Entrepreneurship", "ar" => "الريادة الاجتماعية", "fr" => "Entrepreneuriat Social"},
    {"tid" => 338, "en" => "Social Media", "ar" => "مواقع التواصل الاجتماعي", "fr" => "Médias sociaux"},
    {"tid" => 464, "en" => "Strategic Planning", "ar" => "التخطيط الاستراتيجي", "fr" => "Planification stratégique"},
    {"tid" => 31, "en" => "Strategic Planning Skills", "ar" => "مهارات التخطيط الاستراتيجي", "fr" => "Compétences en planification stratégique"},
    {"tid" => 333, "en" => "Teaching Methodologies", "ar" => "طرائق التدريس", "fr" => "Méthodologie d’enseignement"},
    {"tid" => 16, "en" => "Trade", "ar" => "التجارة", "fr" => "Commerce "},
    {"tid" => 511, "en" => "Volunteerism", "ar" => "العمل التطوعي", "fr" => "Bénévolat"},
    {"tid" => 330, "en" => "Training of Trainers (TOT)", "ar" => "تدريب المدربين ", "fr" => "Formation de Formateurs (FDF) "},
    {"tid" => 378, "en" => "Voter Participation", "ar" => "مشاركة الناخبين ", "fr" => "Participation des électeurs"},
    {"tid" => 381, "en" => "Women*777*s Rights", "ar" => "حقوق المرأة", "fr" => "Droits des femmes"}

]
@tags.each do |tg|

  inum = Tag.create(name: tg['en'], tid: tg['tid'] )
  trans = Tag::Translation.create(:tag_id => inum.id, :locale => "ar", :name => tg['ar'])
  trans = Tag::Translation.create(:tag_id => inum.id, :locale => "fr", :name => tg['fr'])
end





@mattypes = [

    {"en" => "Instructor Curicullum", "ar" => "قطر", "fr" => "Qatar "},
    {"en" => "Website", "ar" => "المملكة العربية السعودية", "fr" => "Arabie Saoudite"},
    {"en" => "Student Manual", "ar" => "سوريا", "fr" => "Syrie"},
    {"en" => "Mobile App", "ar" => "تونس", "fr" => "Tunisie "},
    {"en" => "Slide Presentation", "ar" => "الإمارات العربية المتحدة", "fr" => "UAE"},
    {"en" => "Video", "ar" => "الضفة الغربية/قطاع غزة", "fr" => "Cisjordanie/Bande de Gaza "},

]
@mattypes.each do |c|
  inum = Materialtype.create(name: c['en'])
  trans = Materialtype::Translation.create(:materialtype_id => inum.id, :locale => "ar", :name => c['ar'])
  trans = Materialtype::Translation.create(:materialtype_id => inum.id, :locale => "fr", :name => c['fr'])
end





trainlanguages = Trainlanguage.create([

                                          {name: 'English'},
                                          {name: 'Arabic'},
                                          {name: 'French'},
                                          {name: 'Kurdish'},
                                          {name: 'Spanish'},
                                          {name: 'German'}

                                      ])




