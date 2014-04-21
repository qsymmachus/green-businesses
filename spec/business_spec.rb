require_relative "spec_helper"

describe Business do
  context ".search_company" do
    let!(:business) { Business.create(company: "My Applesauce Company") }

    it "finds businesses with a company name similar to the search term" do
      results = Business.search_company("applesauce")
      expect(results.first.company).to eq business.company
    end

    it "returns nil if no matching company names are found" do
      results = Business.search_company("mashed potatoes")
      expect(results).to be_nil
    end
  end
end