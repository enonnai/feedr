require 'rails_helper'
require 'web_helpers'

RSpec.feature 'Attending Events', type: :feature do
  scenario 'User can assign themselves to an event', js: true do
    sign_up
    click_link "Add your Event"
    create_event
    click_link "Log Out"
    sign_up_2
    click_link "View Event"
    click_button "I'm Going"
    expect(page).to have_content("1 going")
    expect(page).to have_content("5 places left")
  end

  scenario 'User can see FULL HOUSE message if an event is full', js: true do
    sign_up
    click_link "Add your Event"
    create_event_2
    click_link "Log Out"
    sign_up_2
    click_link "View Event"
    click_button "I'm Going"
    click_link "Log Out"
    sign_up_2
    visit '/events/'
    click_link "View Event"
    expect(page).to have_content("FULL HOUSE! Find another event to attend here.")
  end

  scenario "Users who are going to an event can see their name in the attendees' list", js: true do
    sign_up
    click_link "Add your Event"
    create_event_2
    click_link "Log Out"
    sign_up_2
    click_link "View Event"
    click_button "I'm Going"
    expect(page).to have_content("Tester 1")
  end

end
