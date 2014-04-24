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
    data[:location] = generate_location_url(row.shift)
    puts "Building business '#{data[:company]}'..."
    Business.create(data)
  end
end

# Generate google maps embed url based on location
def generate_location_url(location)
    location = location.gsub("\n", "+")
    location = location.gsub(" ", "+")
    "https://www.google.com/maps/embed/v1/place?key=AIzaSyBSK5Z9EypS20-T9HECcccyplpGUNa0KHE&q=" + location
end

# Let's do it!
seed_businesses