require 'csv'
# Users.delete_all
OrderItem.delete_all
Order.delete_all
Province.delete_all
VgameGenre.delete_all
Vgame.delete_all
Genre.delete_all

genres = []
genres << Genre.create(title: 'Racing')
genres << Genre.create(title: 'Sports')
genres << Genre.create(title: 'Platformer')
genres << Genre.create(title: 'FPS')
genres << Genre.create(title: 'Action')
genres << Genre.create(title: 'RTS')

filename = Rails.root.join('db/videogames1.csv')

puts "Loading Games from the CSV file: #{filename}"

csv_data = File.read(filename)
games = CSV.parse(csv_data, headers: true, encoding: 'utf-8')

games.each do |g|
  vgame = Vgame.create(title: g['Name'], price: g['Price'], description: g['Description'])
  VgameGenre.create(vgame: vgame, genre: genres[rand(0..(genres.length - 1))])
end

file2 = Rails.root.join('db/provinces.csv')
puts "Loading Provinces from the CSV file: #{file2}"

csv_data = File.read(file2)
provinces = CSV.parse(csv_data, headers: true, encoding: 'utf-8')

provinces.each do |pro|
  Province.create(name: pro['Name'], GST: pro['GST'], PST: pro['PST'], HST: pro['HST'])
end

# if Rails.env.development?
#   AdminUser.create!(email: 'admin@example.com', password: 'password',
#                     password_confirmation: 'password')
# end
