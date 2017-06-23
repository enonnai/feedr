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
end
