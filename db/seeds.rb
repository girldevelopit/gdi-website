# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

admin = Role.create! do |a|
                a.name = 'admin'
                a.resource_id = 1
              end

leader = Role.create! do |a|
                a.name = 'leader'
                a.resource_id = 2
              end

#give role privileges to default admin user created by Devise
adminfirst = AdminUser.first
adminfirst.roles << admin
adminfirst.roles << leader

chapter_seed = Rails.root.join('db', 'seeds', 'locs2.yml')

#board_seed = Rails.root.join('db', 'seeds', 'board.yml')
locs = YAML::load_file(chapter_seed)
#board = YAML::load_file(board_seed) ## come back to this
locs.each do |l|
  # sleep 0.25
  newloc = Chapter.create!(chapter: l["name"], fb: l["facebook"], meetup: l["meetup_url"],
                  twitter: l["twitter"], linkedin: l["linkedin"], github: l["github"],
                  latitude: l["latitude"], longitude: l["longitude"], state: l["state"],
                  #geo: l["name"],
                  meetup_id: l["meetup_id"], email: l["email"])
  l["leaders"].each do |leader|
    ldr = Bio.new(title: "LEADERS", name: leader["name"], info: leader["bio"],
    image: File.open(File.join(Rails.root, "app/assets/images/#{leader["image"]}")),
    chapter_id: newloc.id)
    if leader["contact"]
      leader["contact"].each do |k, v|
        ldr[k] = v
      end
    end
    ldr.save
  end

  l["instructors"].each do |instructor|
    inst = Bio.new(title: "INSTRUCTORS", name: instructor["name"],
    image: File.open(File.join(Rails.root, "app/assets/images/#{instructor["image"]}")),
    info: instructor["bio"], chapter_id: newloc.id, pic_link: instructor["image"])
    if instructor["contact"]
      instructor["contact"].each do |k, v|
        inst[k] = v
      end
    end
    inst.save
  end
  l["sponsors"].each do |sponsor|
    Sponsor.create!(name: sponsor["name"], url: sponsor["website"], chapter_id: newloc.id,
    image: File.open(File.join(Rails.root, "app/assets/images/#{sponsor["logo"]}"))
    )
  end
end
