require 'pg_search'

class Business < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search_by_company, against: [:company, :sector]
end