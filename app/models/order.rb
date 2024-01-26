# frozen_string_literal: true

class Order < ApplicationRecord
  enum status: {
    pending: 0,
    paid: 1
  }

  validates :session_id, :stripe_checkout_id, presence: true
end
