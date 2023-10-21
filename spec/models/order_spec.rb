require 'rails_helper'

RSpec.describe Order do
  it { is_expected.to validate_presence_of :session_id }
  it { is_expected.to validate_presence_of :stripe_checkout_id }
end
