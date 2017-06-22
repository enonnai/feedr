require './app/models/user.rb'
require 'rails_helper'
require 'web_helpers'

RSpec.feature 'User profiles', type: :feature do
  scenario 'User profiles have name attribute' do
    visit 'users/sign_up'
    sign_up
    visit '/profiles/new'
    expect(page).to have_content "Name"
  end

  scenario 'Signed up users can see Create Profile link' do
    visit 'users/sign_up'
    sign_up
    expect(page).to have_content "Create Profile"
  end

  scenario 'Users who have filled in their profile can see My Profile link' do
    visit 'users/sign_up'
    sign_up
    click_link 'Create Profile'
    create_profile
    click_button 'Return to Events'
    expect(page).to have_content "My Profile"
  end
end
