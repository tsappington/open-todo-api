# require 'random_data'

# Default User
u = User.new(
  # username:              'Ted Sappington',
  email:                 'tedsappington@gmail.com',
  password:              'password',
  password_confirmation: 'password'
)
# u.skip_confirmation!
u.save!


# Items, for Default User
5.times do
  Item.create!(
    name:  Faker::Name.title,
  )
end


# Lists
5.times do
  List.create!(
    name:  Faker::Name.title,
  )
end


puts "Seed complete"
# puts "#{User.count} users created"
# puts "#{Item.count} items created"
