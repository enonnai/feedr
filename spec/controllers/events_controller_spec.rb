require 'rails_helper'

RSpec.describe EventsController, type: :controller do

  describe "events controller" do
    it "responds with 302 if user is not signed in" do
      get :index
      expect(response.status).to eq(302)
    end
  end

end
