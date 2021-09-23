require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'Validates' do
    it 'is valid' do
      # product = create(:product)
      name = Faker::Commerce.product_name
      category_name = Faker::Commerce.department
      category = Category.create(name: category_name)
      product = Product.create(name: name, category: category)
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
