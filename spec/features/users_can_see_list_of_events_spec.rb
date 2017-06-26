require 'rails_helper'
require 'web_helpers'


RSpec.feature "Events Page", type: :feature do

  scenario "users can see a list of events" do
    visit '/'
    sign_up
    click_link 'Add your Event'
    create_event
    expect(page).to have_content("Chilli con carne and margaritas for all. Sombreros and drinks welcome!")
  end

end
