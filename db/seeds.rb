require "faker"

50.times do
  Product.create!(name: Faker::Lorem.word, price: 999.00)
end

p "Added #{Product.count} products"
