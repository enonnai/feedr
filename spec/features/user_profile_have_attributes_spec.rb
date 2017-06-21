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
end
