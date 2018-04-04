require 'rails_helper'

RSpec.describe "Beerfacts", type: :request do
  describe "GET /beerfacts" do
    it "works! (now write some real specs)" do
      get beerfacts_path
      expect(response).to have_http_status(200)
    end
  end
end
