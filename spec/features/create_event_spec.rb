require 'rails_helper'
require 'web_helpers'

RSpec.feature "Events", type: :feature do

  scenario "User can add their event", type: :feature do
    sign_up
    click_link 'Add your Event'
    create_event
    expect(page).to have_content("Your event has been added")
    expect(page).to have_content("Santa Claus")
  end

  scenario "users can see the event description", type: :feature do
    sign_up
    click_link "Add your Event"
    create_event
    click_link "View Event"
    expect(page).to have_content("Chilli con carne and margaritas for all. Sombreros and drinks welcome!")
  end
end
