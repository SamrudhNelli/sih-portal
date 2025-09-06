# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
locations = [
  { name: "Mumbai", address: "Mumbai, Maharashtra, India", latitude: 19.0760, longitude: 72.8777 },
  { name: "Delhi", address: "Delhi, India", latitude: 28.7041, longitude: 77.1025 },
  { name: "Bengaluru", address: "Bengaluru, Karnataka, India", latitude: 12.9716, longitude: 77.5946 },
  { name: "Chennai", address: "Chennai, Tamil Nadu, India", latitude: 13.0827, longitude: 80.2707 },
  { name: "Kolkata", address: "Kolkata, West Bengal, India", latitude: 22.5726, longitude: 88.3639 },
  { name: "Hyderabad", address: "Hyderabad, Telangana, India", latitude: 17.3850, longitude: 78.4867 },
  { name: "Pune", address: "Pune, Maharashtra, India", latitude: 18.5204, longitude: 73.8567 },
  { name: "Ahmedabad", address: "Ahmedabad, Gujarat, India", latitude: 23.0225, longitude: 72.5714 },
  { name: "Jaipur", address: "Jaipur, Rajasthan, India", latitude: 26.9124, longitude: 75.7873 },
  { name: "Lucknow", address: "Lucknow, Uttar Pradesh, India", latitude: 26.8467, longitude: 80.9462 }
]

locations.each do |loc|
  Location.find_or_create_by(name: loc[:name]) do |location|
    location.latitude = loc[:latitude]
    location.longitude = loc[:longitude]
  end
end

User.find_or_create_by(email: "admin@test.com") do |user|
  user.password = "iamadmin"
  user.admin = true
end
