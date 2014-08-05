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

Location.create! do |a|
  a.location = 'RDU'
  a.blurb = 'Durham is a colorful, creative, and entrepreneurial community that continuously earns accolades as one of the best places in the world to visit, live, and do business. With nationally acclaimed restaurants, shopping, historical sites, and myriad other things to do, Durham is the place where great things happen.'
  a.fb = 'https://www.facebook.com/girldevelopit'
  a.meetup = 'http://www.meetup.com/Girl-Develop-It-RDU'
  a.geo = 'American Underground, Durham, NC'
end

Location.create! do |a|
  a.location = 'NYC'
  a.blurb = "It can be intimidating for women to learn and ask questions when they are in an extreme minority. While open and welcoming, today's budding developer community is up to 91% male. There isn't a comfortable place where women can learn at their own pace and not be afraid to ask stupid questions."
  a.fb = 'https://www.facebook.com/girldevelopit'
  a.meetup = 'http://www.meetup.com/girldevelopit/'
  a.geo = 'New York, NY'
end
