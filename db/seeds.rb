require "faker"

50.times do
  Product.create!(name: Faker::Food.ingredient, price: 999.00)
end

p "Added #{Product.count} products"
