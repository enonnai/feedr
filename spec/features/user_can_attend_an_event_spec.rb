require 'rails_helper'
require 'web_helpers'

RSpec.feature 'Attending Events', type: :feature do
  scenario 'User can assign themselves to an event' do
    sign_up
    click_link "Add your Event"
    create_event
    click_link "Log Out"
    sign_up_2
    click_link "View Event"
    click_button "I'm Going"
    expect(page).to have_content("You are attending this event!")
    expect(page).to have_content("Attending: 1")
  end
end
