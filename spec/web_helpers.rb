require 'rails_helper'

def sign_up(email = "test@example.com")
  visit '/users/sign_up'
  fill_in 'user_email', with: email
  fill_in 'user_password', with: "password"
  fill_in 'user_password_confirmation', with: "password"
  click_button 'Sign up'
end

def sign_up_2(email = "test2@example.com")
  visit '/users/sign_up'
  fill_in 'user_email', with: email
  fill_in 'user_password', with: "password2"
  fill_in 'user_password_confirmation', with: "password2"
  click_button 'Sign up'
end

def create_event
  fill_in "event_title", with: "Mexican dinner"
  fill_in "event_info", with: "Chilli con carne and margaritas for all. Sombreros and drinks welcome!"
  fill_in "event_date_time", with: "Friday at 8 PM"
  fill_in "event_nr_guests", with: 6
  click_button "Submit"
end

def create_profile
  fill_in "profile_name", with: "Tester"
  fill_in "profile_location", with: "London"
  fill_in "profile_short_bio", with: "I like testing stuff"
  click_button "Submit"
end
