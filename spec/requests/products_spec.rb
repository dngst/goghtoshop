require 'rails_helper'

RSpec.describe '/products' do
  let(:product) { create(:product) }

  describe 'GET /index' do
    it 'renders a successful response' do
      get products_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      get product_url(product)
      expect(response).to be_successful
    end
  end
end
