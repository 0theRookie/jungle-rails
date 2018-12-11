# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding Data ..."

# Helper functions
def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

# Only run on development (local) instances not on production, etc.
unless Rails.env.development?
  puts "Development seeds only (for now)!"
  exit 0
end

# Let's do this ...

## CATEGORIES

puts "Finding or Creating Categories ..."

cat1 = Category.find_or_create_by! name: 'Apparel'
cat2 = Category.find_or_create_by! name: 'Electronics'
cat3 = Category.find_or_create_by! name: 'Furniture'

## PRODUCTS

puts "Re-creating Products ..."

Product.destroy_all

cat1.products.create!({
  name:  'Men\'s Classy shirt',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel1.jpg'),
  quantity: 10,
  price: 64.99
})

cat1.products.create!({
  name:  'Women\'s Zebra pants',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel2.jpg'),
  quantity: 18,
  price: 124.99
})

cat1.products.create!({
  name:  'Hipster Hat',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel3.jpg'),
  quantity: 0,
  price: 34.49
})

cat1.products.create!({
  name:  'Hipster Socks',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel4.jpg'),
  quantity: 0,
  price: 25.00
})

cat1.products.create!({
  name:  'Russian Spy Shoes',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel5.jpg'),
  quantity: 8,
  price: 1_225.00
})

cat1.products.create!({
  name:  'Human Feet Shoes',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel6.jpg'),
  quantity: 82,
  price: 224.50
})


cat2.products.create!({
  name:  'Modern Skateboards',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics1.jpg'),
  quantity: 0,
  price: 164.49
})

cat2.products.create!({
  name:  'Hotdog Slicer',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics2.jpg'),
  quantity: 3,
  price: 26.00
})

cat2.products.create!({
  name:  'World\'s Largest Smartwatch',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics3.jpg'),
  quantity: 32,
  price: 2_026.29
})

cat3.products.create!({
  name:  'Optimal Sleeping Bed',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('furniture1.jpg'),
  quantity: 320,
  price: 3_052.00
})

cat3.products.create!({
  name:  'Electric Chair',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('furniture2.jpg'),
  quantity: 2,
  price: 987.65
})

cat3.products.create!({
  name:  'Red Bookshelf',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('furniture3.jpg'),
  quantity: 23,
  price: 2_483.75
})


puts "DONE!"

# Reviews

puts "Recreating Reviews..."

Review.destroy_all


user1 = User.create!(
  first_name: 'tom',
  last_name: 'tomson',
  email: 'tom@gmail.com',
  password_digest: 'aaa'
)
Review.create!(
  user_id: user1.id,
  product_id: 1,
  description: "Wow I love this!",
  rating: 4
)

user2 = User.create!(
  first_name: 'bob',
  last_name: 'bobson',
  email: 'bob@gmail.com',
  password_digest: 'aaa'
)
Review.create!(
  user_id: user2.id,
  product_id: 8,
  description: "cool"
)

user3 = User.create!(
  first_name: 'bill',
  last_name: 'billson',
  email: 'bill@gmail.com',
  password_digest: 'aaa'
)
Review.create!(
  user_id: user3.id,
  product_id: 5,
  description: "Recommending to my friends.",
  rating: 3
)

user4 = User.create!(
  first_name: 'jim',
  last_name: 'jimson',
  email: 'jim@gmail.com',
  password_digest: 'aaa'
)
Review.create!(
  user_id: user4.id,
  product_id: 5,
  description: "It's good.",
  rating: 3
)

user5 = User.create!(
  first_name: 'kelly',
  last_name: 'kellyson',
  email: 'kelly@gmail.com',
  password_digest: 'aaa'
)
Review.create!(
  user_id: user5.id,
  product_id: 8,
  description: "Nice stuff guys.",
  rating: 4
)

user6 = User.create!(
  first_name: 'jerome',
  last_name: 'jeromeson',
  email: 'jerome@gmail.com',
  password_digest: 'aaa'
)
Review.create!(
  user_id: user6.id,
  product_id: 11,
  description: "I sent it back.",
  rating: 1
)

user7 = User.create!(
  first_name: 'ralph',
  last_name: 'relson',
  email: 'rel@gmail.com',
  password_digest: 'aaa'
)
Review.create!(
  user_id: user7.id,
  product_id: 12,
  description: "It doesnt fit my physique.",
  rating: 2
)

user9 = User.create!(
  first_name: 'bill',
  last_name: 'billson',
  email: 'bill@gmail.com',
  password_digest: 'aaa'
)
Review.create!(
  user_id: user9.id,
  product_id: 10,
  description: "Recommending to my friends.",
  rating: 3
)

user8 = User.create!(
  first_name: 'tem',
  last_name: 'temson',
  email: 'tem@gmail.com',
  password_digest: 'aaa'
)
Review.create!(
  user_id: user8.id,
  product_id: 10,
  description: "I would recommend to my friends, but my other friend bill already did.",
  rating: 3
)


puts "DONE!"