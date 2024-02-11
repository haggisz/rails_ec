# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(
  name: 'admin',
  admin: true,
  email: 'a@a.com',
  password: 'aaabbb'
)

2.times do
  product_first = Product.create!(
    name: '仮',
    body: 'aaa',
    price: '300円',
    action: 'オプションを見る'
    image: product_first.image.attach(io: File.open(Rails.root.join('app/assets/images/cat.png')), filename: 'cat.png')
  )


  product_second = Product.create!(
    name: '人気',
    body: 'ccc',
    price: '300円',
    action: 'カートに入れる'
    image: product_second.image.attach(io: File.open(Rails.root.join('app/assets/images/cat.png')), filename: 'cat.png')

  )
end
