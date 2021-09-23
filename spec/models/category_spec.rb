require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'Validates' do
    it 'is valid' do
      category = create(:category)
      expect(category).to be_valid
    end
  end

  context 'Validates fields' do
    it 'name?' do
      is_expected.to validate_presence_of(:name)
    end
  end

  context 'Associations' do
    it 'has_many?' do
      is_expected.to have_many(:products)
    end
  end
end
