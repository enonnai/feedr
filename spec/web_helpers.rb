require 'rails_helper'

def sign_up(email = "test@example.com")
  click_link "Sign Up"
  fill_in 'user_name', with: "Tester 1"
  fill_in 'user_email', with: email
  fill_in 'user_password', with: "password"
  fill_in 'user_password_confirmation', with: "password"
  click_button 'Sign up'
end

def sign_up_2(email = "test2@example.com")
  click_link "Sign Up"
  fill_in 'user_name', with: "Tester 2"
  fill_in 'user_email', with: email
  fill_in 'user_password', with: "password2"
  fill_in 'user_password_confirmation', with: "password2"
  click_button 'Sign up'
end

def create_event
  fill_in "event_title", with: "Mexican dinner"
  fill_in "event_address", with: "London"
  fill_in "event_info", with: "Chilli con carne and margaritas for all. Sombreros and drinks welcome!"
  fill_in "event_date_time", with: "30/07/17, 19:00"
  fill_in "event_end_date_time", with: "30/07/17, 22:00"
  fill_in "event_nr_guests", with: 6
  page.attach_file('event_event_picture', Rails.root + 'app/assets/images/feedr-test-img.jpg')
  click_button "Submit"
end

def create_profile
  fill_in "profile_name", with: "Tester"
  fill_in "profile_location", with: "London"
  fill_in "profile_short_bio", with: "I like testing stuff"
  click_button "Submit"
end

def create_event_with_one_guest
  fill_in "event_title", with: "Mexican dinner"
  fill_in "event_address", with: "London"
  fill_in "event_info", with: "Chilli con carne and margaritas for all. Sombreros and drinks welcome!"
  fill_in "event_date_time", with: "30/07/17, 19:00"
  fill_in "event_end_date_time", with: "30/07/17, 22:00"
  fill_in "event_nr_guests", with: 1
  page.attach_file('event_event_picture', Rails.root + 'app/assets/images/feedr-test-img.jpg')
  click_button "Submit"
end
