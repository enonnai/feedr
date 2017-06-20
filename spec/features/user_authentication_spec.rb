require 'rails_helper'
require 'web_helpers'

RSpec.feature "Sessions", type: :feature do

  scenario "User can sign up", type: :feature do
    visit '/users/sign_up'
    sign_up
    expect(current_path).to eq '/'
  end

  scenario "User can log out", type: :feature do
    visit '/users/sign_up'
    sign_up
    click_button 'Log out'
    expect(page).to have_content ('Signed out successfully')
  end
end
