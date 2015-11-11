require 'faker'

3.times do
  Event.create(
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph(2),
    date_and_time: Faker::Time.forward(30, :evening),
    location: Faker::Address.city
  )
end

User.create(
  email: "joey.chamberlin@gmail.com",
  password: "admin"
)