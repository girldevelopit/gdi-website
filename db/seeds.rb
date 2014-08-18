# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# AdminUser.create! do |a|
#   a.email = 'instructor@example.com'
#   a.password = a.password_confirmation = 'password'
# end

# rdu = Location.create! do |a|
#   a.location  = 'Raleigh/Durham'
#   a.blurb     = 'Durham is a colorful, creative, and entrepreneurial community that continuously earns accolades as one of the best places in the world to visit, live, and do business. With nationally acclaimed restaurants, shopping, historical sites, and myriad other things to do, Durham is the place where great things happen.'
#   a.fb        = 'https://www.facebook.com/girldevelopit'
#   a.meetup    = 'http://www.meetup.com/Girl-Develop-It-RDU'
#   a.geo       = 'American Underground, Durham, NC'
# end
#
# nyc = Location.create! do |a|
#   a.location  = 'New York City'
#   a.blurb     = "It can be intimidating for women to learn and ask questions when they are in an extreme minority. While open and welcoming, today's budding developer community is up to 91% male. There isn't a comfortable place where women can learn at their own pace and not be afraid to ask stupid questions."
#   a.fb        = 'https://www.facebook.com/girldevelopit'
#   a.meetup    = 'http://www.meetup.com/girldevelopit/'
#   a.geo       = 'New York, NY'
# end




julia = AdminUser.create! do |a|
            a.email       = 'julia@girldevelopit.com'
            a.password    = a.password_confirmation = 'password'
          end

webmistress = Role.create! do |a|
                a.name = 'webmistress'
                a.resource_id = 1
              end

admin = Role.create! do |a|
                a.name = 'admin'
                a.resource_id = 2
              end

julia.roles << webmistress
julia.roles << admin
julia.save!

adminfirst = AdminUser.first
adminfirst.roles << webmistress
adminfirst.roles << admin

juliabio = Bio.create! do |a|
  a.title     = 'LEADERS'
  a.name      = 'Julia Elman'
  a.info      = "Julia Elman is a Designer & Front-End Developer based in Chapel Hill, NC. She has been working her brand of web skills for over a decade, focusing mainly on HTML/CSS markup and Javascript. She is an avid supporter of tech education and recently volunteered at a local Teen Tech Camp in Durham, NC in 2012. Julia is excited to be a part of the first Girl Develop It in North Carolina and share her wealth of knowledge with others."
  a.admin_user_id = julia.id
  a.image     = 'https://s3.amazonaws.com/girl_develop_it/gdi_logo_badge.png'
end

aurelia = AdminUser.create! do |a|
  a.email       = 'aurelia@girldevelopit.com'
  a.password    = a.password_confirmation = 'password'
  # a.location_id = rdu.id
end

aureliabio = Bio.create! do |a|
  a.title     = 'LEADERS'
  a.name      = 'Aurelia Moser'
  a.info      = "Aurelia is a librarian and developer in NYC. In addition leading NYC's GDI chapter, she teaches metadata and data visualization courses, and develops open source mapping software and data-journo curriculum under current support of a Knight-Mozilla fellowship. In her free time, she contributes to art && code community programs and participates in hackathons for Data Kind, Hack n'Jill, Art Hack Day and Open Data programs. Full stack from data munging to code monkeying, she's happy to geek for social good where possible."
  a.admin_user_id = aurelia.id
  a.image     = 'https://s3.amazonaws.com/girl_develop_it/gdi_logo_badge.png'
end

instructorbio = Bio.create! do |a|
  a.title     = 'INSTRUCTORS'
  a.name      = 'Awesome Human'
  a.info      = "This awesome human is super jazzed to help people learn to code."
  a.image     = 'https://s3.amazonaws.com/girl_develop_it/gdi_logo_badge.png'
end

location_seed = Rails.root.join('db', 'seeds', 'locs2.yml')

#board_seed = Rails.root.join('db', 'seeds', 'board.yml')
locs = YAML::load_file(location_seed)
#board = YAML::load_file(board_seed) ## come back to this
locs.each do |l|
  # lat = Random.new.rand(32..43)
  # long = Random.new.rand(-117..-67)
  # sleep 0.25
  newloc = Location.create!(location: l["name"], fb: l["facebook"], meetup: l["meetup_url"],
                  twitter: l["twitter"], linkedin: l["linkedin"], github: l["github"],
                  latitude: l["latitude"], longitude: l["longitude"], state: l["state"],
                  #geo: l["name"],
                  meetup_id: l["meetup_id"], email: l["email"])
  l["leaders"].each do |leader|
    # binding.pry
    ldr = Bio.new(title: "LEADERS", name: leader["name"], info: leader["bio"],
    # image: File.open(File.join(Rails.root, "app/assets/images/#{leader["image"]}")),
    location_id: newloc.id)
    # binding.pry
    if leader["contact"]
      leader["contact"].each do |k, v|
        ldr[k] = v
      end
    end
    # unless leader["contact"] == nil
    #   ldr.twitter = leader["contact"]["twitter"]
    #   ldr.email = leader["contact"]["email"]
    #   ldr.website = leader["contact"]["website"]
    #   ldr.github = leader["contact"]["github"]
    #   ldr.linkedin = leader["contact"]["linkedin"]
    # end
    ldr.save
  end

  l["instructors"].each do |instructor|
    inst = Bio.new(title: "INSTRUCTORS", name: instructor["name"],
    # image: File.open(File.join(Rails.root, "app/assets/images/#{instructor["image"]}")),
    info: instructor["bio"], location_id: newloc.id, pic_link: instructor["image"])
    if instructor["contact"]
      instructor["contact"].each do |k, v|
        inst[k] = v
      end
    end
    inst.save
  end
  l["sponsors"].each do |sponsor|
    Sponsor.create!(name: sponsor["website"], url: sponsor["website"], location_id: newloc.id,
    # image: File.open(File.join(Rails.root, "app/assets/images/#{sponsor["logo"]}"))
    )
  end
end

# aurelia.location_id = Location.first

# Bio.create!(image: "image", image: File.open(File.join(Rails.root, 'app/assets/images/tri-cities/erin.jpeg')))
