Prison.destroy_all # if Rails.env.development?
puts "Creating prisons..."
alcatraz = Prison.create!(
  name: "Alcatraz",
  banner_url: "https://i.ytimg.com/vi/vK6HsOreF7c/maxresdefault.jpg"
)

Prison.create!(
  name: "Guantanamo Bay",
  banner_url: "https://www.straitstimes.com/sites/default/files/styles/article_pictrure_780x520_/public/articles/2018/10/18/ST_20181018_PRISON18NZKF_4353249.jpg?itok=zq-67Gln&timestamp=1539800977"
)

puts "Creating inmates..."
Inmate.create!(
  name: "True Love",
  image_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/dluzi5onoqlnu3cjgyky.jpg",
  death_row: (rand(1..2) == 1),
  prison: alcatraz
)

Inmate.create!(
  name: "Doug",
  image_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/viqfqp0tfkmcwmj7cfwe.jpg",
  death_row: (rand(1..2) == 1),
  prison: alcatraz
)

Inmate.create!(
  name: "Hidehiro",
  image_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/dvqqcqbipvupvgnpls0n.jpg",
  death_row: (rand(1..2) == 1),
  prison: alcatraz
)

Inmate.create!(
  name: "James",
  image_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/fmghwkls4gyd3edttutn.jpg",
  death_row: (rand(1..2) == 1),
  prison: alcatraz
)

Inmate.create!(
  name: "Adis",
  image_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/afvftqeldmrlmitlb48c.jpg",
  death_row: (rand(1..2) == 1),
  prison: alcatraz
)

Inmate.create!(
  name: "Reyes",
  image_url: "https://avatars3.githubusercontent.com/u/36433822?v=4",
  death_row: (rand(1..2) == 1),
  prison: alcatraz
)

Inmate.create!(
  name: "Gaetan",
  image_url: "https://avatars2.githubusercontent.com/u/11267346?v=4",
  death_row: (rand(1..2) == 1),
  prison: alcatraz
)

puts "Creating crimes..."
CRIMES = ['bad indentation', 'using scaffold', 'inline styling', 'spaces to indent']
CRIMES.each { |name| Crime.create!(name: name) }

puts "all done!"










