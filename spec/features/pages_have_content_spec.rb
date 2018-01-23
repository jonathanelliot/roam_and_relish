require 'rails_helper'

RSpec.feature 'Content', type: :feature do
  before(:each) do
    visit '/'
  end
  scenario 'User can see the brand logo' do
    expect(page).to have_css("img[src*='R&RTrademarked']")
  end
  scenario 'User can see menu items' do
    expect(page).to have_content 'Story'
    expect(page).to have_content 'Products'
    expect(page).to have_content 'Stockists'
    expect(page).to have_content 'Buy Online'
  end
end
