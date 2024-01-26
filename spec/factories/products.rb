# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    name { Faker::Food.ingredient }
    price { '999.00' }
  end
end
