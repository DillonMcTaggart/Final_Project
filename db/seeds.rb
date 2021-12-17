require 'csv'

Videogame.delete_all
Customer.delete_all

filename = Rails.root.join('db/vgsales.csv')

puts "Loading videogames from csv file: #{filename}"

csv_data = File.read(filename)
videogames = CSV.parse(csv_data, headers: true, encoding: 'utf-8')

videogames.each do |v|
  puts v['Name']
end
