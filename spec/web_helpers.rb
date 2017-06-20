require 'rails_helper'

def sign_up(email = "test@gmail.com")
  visit '/users/sign_up'
  fill_in 'user_email', with: email
  fill_in 'user_password', with: "password"
  fill_in 'user_password_confirmation', with: "password"
  click_button 'Sign up'
end
