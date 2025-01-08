# frozen_string_literal: true

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

restaurants = [
  { name: 'Epicure', address: '75008 Paris', category: 'french', phone_number: '123456' },
  { name: 'Sushi Zen', address: '10001 New York', category: 'japanese', phone_number: '123456' },
  { name: 'Trattoria Da Luigi', address: '10100 Rome', category: 'italian', phone_number: '123456' },
  { name: 'Chinatown Express', address: '90001 Los Angeles', category: 'chinese', phone_number: '123456' },
  { name: 'Le Pain Quotidien', address: '75009 Paris', category: 'belgian', phone_number: '123456' }
]

restaurants.each do |restaurant|
  r = Restaurant.create!(restaurant)

  Review.create!(content: 'Delicious!', rating: rand(1..5), restaurant: r)
  Review.create!(content: 'Okay, but could be better.', rating: rand(1..5), restaurant: r)

  puts "Created #{restaurant[:name]}"
end

puts 'Finished!'
