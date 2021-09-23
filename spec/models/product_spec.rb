require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'Validates' do
    it 'is valid' do
      # product = create(:product)
      category = Category.create(name: 'Category for product 001')
      product = Product.create(name: 'Product 001', category: category)
      expect(product).to be_valid
    end
  end

  context 'Validates fields' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:category) }
  end

  context 'Associations' do
    it { is_expected.to belong_to(:category) }
  end
end
