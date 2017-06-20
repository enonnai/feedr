require 'rails_helper'
require 'web_helpers'

RSpec.feature "Sessions", type: :feature do

  scenario "User can sign up", type: :feature do
    visit '/users/sign_up'
    sign_up
    expect(current_path).to eq '/'
  end


end
