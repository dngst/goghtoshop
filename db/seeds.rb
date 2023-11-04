require "faker"

User.create!(email: "admin@goghtoshop.com", password: "password", admin: true)

500.times do
  Product.create!(name: Faker::Food.ingredient, price: 999.00)
end

p "Added #{Product.count} products"
