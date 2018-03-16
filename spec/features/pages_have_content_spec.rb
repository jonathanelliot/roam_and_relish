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
    expect(page).to have_content 'Where To Buy'
  end
  scenario 'User can see footer items' do
    expect(page). to have_content 'Roam & Relish, Ellacott Barton, Bratton Clovelly, Okehampton, Devon EX20 4LB'
    expect(page). to have_content 'Email: info@eversfieldorganic.co.uk'
    expect(page). to have_content 'Phone: 01837 871 400'
  end
end
