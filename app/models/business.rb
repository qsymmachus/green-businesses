class Business < ActiveRecord::Base
  def self.search_company(term)
    return nil if term.nil? || term == ""
    term.downcase!
    results = Business.where("LOWER(company) LIKE ?", "%#{term}%")
    results.first.nil? ? nil : results
  end
end