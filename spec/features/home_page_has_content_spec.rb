require 'rails_helper'

RSpec.feature 'Content', type: :feature do
  scenario 'user can see content' do
    visit '/'
    expect(page).to have_content 'Roam & Relish'
  end
end
