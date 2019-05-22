Prison.destroy_all # if Rails.env.development?

Prison.create!(
  name: "Alcatraz",
  banner_url: "https://i.ytimg.com/vi/vK6HsOreF7c/maxresdefault.jpg"
)

Prison.create!(
  name: "Guantanamo Bay",
  banner_url: "https://www.straitstimes.com/sites/default/files/styles/article_pictrure_780x520_/public/articles/2018/10/18/ST_20181018_PRISON18NZKF_4353249.jpg?itok=zq-67Gln&timestamp=1539800977"
)
