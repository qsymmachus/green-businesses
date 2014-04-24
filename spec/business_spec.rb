require_relative "spec_helper"

describe Business do
  context ".search_by_company" do
    let!(:business) { Business.create(company: "Applesauce Incorporated") }

    it "finds businesses with a company name similar to the search term" do
      results = Business.search_by_company("applesauce")
      expect(results.first.company).to eq business.company
    end

    it "returns empty ActiveRecord association if no matching company names are found" do
      results = Business.search_by_company("mashed potatoes")
      expect(results.first).to be_nil
    end

    it "returns empty ActiveRecord association if no argument is provided" do
      results = Business.search_by_company("")
      expect(results.first).to be_nil
    end
  end
end