require 'rails_helper'

RSpec.describe 'homepage/index.html.erb', type: :view do

  let(:homepage) { visit root_path }

  context 'homepage' do
    it '#index' do
      homepage
      expect(controller.request.path_parameters[:action]).to eq('index')
    end
    it 'root path' do
      homepage
      expect(page.current_path).to eq '/'
    end
  end
end
