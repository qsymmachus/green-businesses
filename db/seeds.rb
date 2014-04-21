require 'csv'

def seed_businesses
  CSV.foreach("db/Certified_Green_Businesses.csv") do |row|
    data = {}
    data[:company] = row.shift
    data[:sector] = row.shift
    data[:phone] = row.shift
    data[:address] = row.shift
    data[:city] = row.shift
    data[:zip] = row.shift
    # Note that line breaks have been interpolated and must be removed:
    data[:location] = row.shift.gsub("\n", " ")
    puts "Building business '#{data[:company]}'..."
    Business.create(data)
  end
end

# Let's do it!
seed_businesses