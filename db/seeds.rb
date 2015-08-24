# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

property_attributes = [
  {
    title: "Garage 1",
    user_id: 1
  },
  {
    title: "Garage 2",
    user_id: 1
  },
  {
    title: "Garage 3",
    user_id: 1
  }
]

booking_attributes = [
  {
    user_id: 1,
    property_id: 1,
    total_price: 15
  },
  {
    user_id: 1,
    property_id: 2,
    total_price: 13
  },
  {
    user_id: 1,
    property_id: 3,
    total_price: 11
  }
]

property_attributes.each do |attribute|
  Property.create(attribute)
end

booking_attributes.each do |attribute|
  Booking.create(attribute)
end
