require 'rails_helper'

RSpec.describe "UserVisits", type: :request do
  describe "GET /user_visits" do
    it "works! (now write some real specs)" do
      get user_visits_path
      expect(response).to have_http_status(200)
    end
  end
end
