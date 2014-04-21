class Business < ActiveRecord::Base
  def self.search_company(term)
    term.downcase!
    results = Business.where("LOWER(company) LIKE ?", "%#{term}%")
    results.first.nil? ? nil : results
  end
end