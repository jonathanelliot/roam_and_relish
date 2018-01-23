require 'rails_helper'

RSpec.feature 'Menu Links', type: :feature do
  scenario 'user can use the story menu link' do
    visit '/'
    click_on 'Story'
    expect(current_path).to eq('/story')
  end
  scenario 'user can use the products menu link' do
    visit '/'
    click_on 'Products'
    expect(current_path).to eq('/products')
  end
end
