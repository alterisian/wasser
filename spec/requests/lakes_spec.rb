require 'rails_helper'

RSpec.describe "Lakes", type: :request do
  describe "GET /lakes" do
    it "works! (now write some real specs)" do
      get lakes_path
      expect(response).to have_http_status(200)
    end
  end
end
