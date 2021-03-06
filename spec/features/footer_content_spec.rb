require 'rails_helper'

RSpec.feature 'Footer', type: :feature do
  before(:each) do
    visit '/'
  end
  scenario 'User can see copyright notice' do
    expect(page).to have_content '©️2018 Roam & Relish'
  end
  scenario 'User can see Facebook link' do
    expect(page).to have_css("img[src*='facebook']")
  end
  scenario 'User can see Twitter link' do
    expect(page).to have_css("img[src*='twitter']")
  end
  scenario 'User can see Youtube link' do
    expect(page).to have_css("img[src*='youtube']")
  end
end
