# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(first_name: "Nicholas", last_name: "Yang");

user.stories.create(
  [
    { title: "Badlands" },
    { title: "Breathless"},
    { title: "The Seventh Seal"},
    { title: "Blow Up"}
  ]
)

Story.find_each do |story|
  (1..10).each do |i|
    story.pages.create(page_number: i)
  end
end

Page.find_each do |page|
  page.media.create(
    content: File.open(Rails.root + 'db/sample.mp3')
  )
end
