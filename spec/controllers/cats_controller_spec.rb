require 'rails_helper'

RSpec.describe CatsController, type: :controller do
  describe "GET #index" do
    it "returns a successful response" do
      get :index
      expect(response).to be_successful
    end

    it "assigns @cats" do
      cat1 = FactoryBot.create(:cat, :whiskers)
      cat2 = FactoryBot.create(:cat, :mittens)
      get :index
      expect(assigns(:cats)).to eq([cat1, cat2])
    end

    it "returns a JSON response" do
      get :index
      expect(response.content_type).to eq('application/json; charset=utf-8')
    end
  end
end
