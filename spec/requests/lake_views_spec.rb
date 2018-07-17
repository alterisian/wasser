require 'rails_helper'

RSpec.describe "LakeViews", type: :request do
  describe "GET /lake_views" do
    it "works! (now write some real specs)" do
      get lake_views_path
      expect(response).to have_http_status(200)
    end
  end
end
