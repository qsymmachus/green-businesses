require_relative 'spec_helper'

describe "Businesses controller", type: :controller do
  context "/" do
    it "is successful" do
      get "/"
      expect(last_response).to be_successful
    end
  end

  context "/search" do
    let!(:business) { Business.create(company: "Applesauce Incorporated")}

    it "is successful" do
      post '/search'
      expect(last_response).to be_successful
    end

    it "returns the results of a search by company name" do
      post '/search', company: "applesauce"
      expect(last_response.body.include?("Applesauce")).to be_true
    end

    it "returns no results if no matching company name is found" do
      post '/search', company: "mashed potatoes"
      expect(last_response.body.include?("not green certified")).to be_true
    end

    it "returns no results if no search term is provided" do
      post '/search'
      expect(last_response.body.include?("not green certified")).to be_true
    end
  end
end