require 'rails_helper'
require 'web_helpers'

RSpec.feature "Events", type: :feature do

  scenario "User can add their event", type: :feature do
    sign_up
    click_link 'Add your Event'
    create_event
    expect(page).to have_content("Your event has been added")
  end

  scenario 'User must fill out all fields of form', type: :feature do
    sign_up
    click_link 'Add your Event'
    click_button 'Submit'
    expect(current_path).to eq('/events/new')
    expect(page).to have_content('Error: Please complete all fields')
  end
end
