require './app/models/user.rb'
require 'rails_helper'

RSpec.feature 'User profiles', type: :feature do
  scenario 'User profiles have name attribute' do
    visit './users/profile'
    expect(page).to have_content "Name"
  end
end
