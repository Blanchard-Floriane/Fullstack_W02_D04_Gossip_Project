require 'faker' 

User.destroy_all

10.times do |index|
  User.create!(
   first_name: Faker::Name.first_name,
   last_name: Faker::Name.last_name,
   description: Faker::Lorem.sentence(word_count: 10),
   email: Faker::Name.first_name.Faker::Name.name @example.com,
   age: Faker::Number.between(from: 18, to: 80)
   )
end

10.times do |index|
  City.create!(
  zip_code: Faker::Address.zip_code,
  name: Faker::Address.city )
end

20.times do |index|
  Gossip.create!(
    title: Faker::Faker::Lorem.sentences,
    content: Faker::Faker::Lorem.sentence(number:5)
  )
end
