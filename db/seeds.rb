# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  email: ENV['admin_email'],
  password: ENV['admin_pass'],
  password: ENV['admin_pass'],
  role: 'admin'
)


25.times do
  ps = Faker::Lorem.paragraphs(10)
  ps.map! do |p|
    p = "<p>#{p}</p>"
  end
  ps = ps.join('')
  Article.create(
    title: Faker::Lorem.sentence,
    published: true,
    body: ps
  )
end