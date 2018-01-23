require 'rails_helper'

RSpec.feature 'Content', type: :feature do
  scenario 'User can see the brand logo' do
    visit '/'
    expect(page).to have_css("img[src*='R&RTrademarked']")
  end
  scenario 'User can see menu items' do
    visit '/'
    expect(page).to have_content 'Story'
    expect(page).to have_content 'Products'
    expect(page).to have_content 'Stockists'
    expect(page).to have_content 'Buy Online'
  end
end
