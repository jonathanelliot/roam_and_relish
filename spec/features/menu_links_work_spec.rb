require 'rails_helper'

RSpec.feature 'Menu Links', type: :feature do
  scenario 'User can use the story menu link' do
    visit '/'
    click_on 'Story'
    expect(current_path).to eq('/story')
  end
  scenario 'User can use the products menu link' do
    visit '/'
    click_on 'Products'
    expect(current_path).to eq('/products')
  end
  scenario 'User can use the Where To Buy menu link' do
    visit '/'
    click_on 'Where To Buy'
    expect(current_path).to eq('/stockists')
  end
  scenario 'User can return to the home page' do
    visit '/'
    click_on 'Story'
    click_on 'Home'
    expect(current_path).to eq('/')
  end
end
