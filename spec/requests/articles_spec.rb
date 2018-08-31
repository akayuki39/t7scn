require 'rails_helper'

RSpec.describe "Articles", type: :request do
  describe "GET /articles" do
    it "gets articles index" do
      get articles_path
      expect(response).to assert_template(:index)
    end
  end
end
