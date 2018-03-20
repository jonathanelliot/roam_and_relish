require 'rails_helper'

RSpec.feature 'Where To Buy Content', type: :feature do
  before(:each) do
    visit '/stockists'
  end
  scenario 'User can see eversfield logo' do
    expect(page).to have_css("img[src*='eversfieldlogo']")
  end
  scenario 'User can see waitrose logo' do
    expect(page).to have_css("img[src*='waitroselogo']")
  end
  scenario 'User can see ocado logo' do
    expect(page).to have_css("img[src*='ocadologo']")
  end
  scenario 'User can see whole foods logo' do
    expect(page).to have_css("img[src*='wholefoodsmarketlogo']")
  end
  scenario 'User can see abel & cole logo' do
    expect(page).to have_css("img[src*='abelandcolelogo']")
  end
  scenario 'User can see as nature intended logo' do
    expect(page).to have_css("img[src*='asnatureintendedlogo']")
  end
end
