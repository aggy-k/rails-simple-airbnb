puts "cleaning up flat db.."
Flat.destroy_all if Rails.env.development?

images = ["one.jpg", "two.jpg", "three.jpg", "four.jpg", "five.jpg", "six.jpg"]
adjectives = %w(cozy charming nice homey lovely spacious stylish)

20.times do
  Flat.create(name: "#{adjectives.sample} apartment in #{Faker::Address.city}", address: Faker::Address.full_address, image: images.sample, description: Faker::Lorem.paragraph(8), price_per_night: (60..150).to_a.sample, number_of_guests: [1, 2, 3, 4].sample)
end

puts "Created #{Flat.count} new flat(s)."
