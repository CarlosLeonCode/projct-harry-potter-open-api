require 'rails_helper'

RSpec.describe "Creatures", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/creatures/index"
      expect(response).to have_http_status(:success)
    end
  end

end
