require 'rails_helper'
require 'web_helpers'

RSpec.feature "Event Requests", type: :feature do
  scenario "users can request to attend an event" do
    visit "users/sign_up"
    sign_up
    click_link "Add your Event"
    create_event
    click_button "Log out"
    click_link "Log in"
    sign_up_2
    click_link "View Event"
    click_button "RSVP"
    expect(page).to have_content("Tester is attending Ben's Party event")
  end
end
