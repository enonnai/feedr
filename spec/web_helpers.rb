require 'rails_helper'

def sign_up(email = "test@example.com")
  visit '/users/sign_up'
  fill_in 'user_email', with: email
  fill_in 'user_password', with: "password"
  fill_in 'user_password_confirmation', with: "password"
  click_button 'Sign up'
end

def create_event
  fill_in "event_title", with: "Mexican dinner"
  fill_in "event_info", with: "Chilli con carne and margaritas for all. Sombreros and drinks welcome!"
  fill_in "event_date_time", with: "Friday at 8 PM"
  fill_in "event_nr_guests", with: 6
  click_button "Submit"
end
