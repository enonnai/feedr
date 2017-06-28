require 'rails_helper'
require 'web_helpers'

describe "Google Maps locations", type: :feature do

  scenario "There is a map element on View Event page", js: true do
    visit '/'
    sign_up
    click_link "Add your Event"
    create_event_with_one_guest
    click_link "View Event"
    expect(page).to have_css('div#map')
  end

end
