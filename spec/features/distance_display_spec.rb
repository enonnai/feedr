require 'rails_helper'
require 'web_helpers'

describe "Distance display for each event", type: :feature do

  scenario "When a user is not signed in, distance is not displayed but a relevant message is instead" do
    visit '/'
    sign_up
    click_link "Add your Event"
    create_event
    click_link 'Log Out'
    expect(page).to have_content("Sign up to see how far you are from this event!")
  end

  scenario "When a user is signed in but has not created a profile yet, the distance is not displayed but a relevant message is instead" do
    visit '/'
    sign_up
    click_link "Add your Event"
    create_event
    expect(page).to have_content("Create a Profile to see how far you are from this event!")
  end

  scenario "When a user is signed in and has created a profile, the distance is displayed" do
    visit '/'
    sign_up
    click_link 'Create Profile'
    create_profile
    click_on "Return to Events"
    sleep 1
    click_link "Add your Event"
    create_event
    expect(page).to have_content("Distance: 151 miles")
  end

end
