require 'csv'

Videogame.delete_all
Customer.delete_all

filename = Rails.root.join('db/vgsales.csv')

puts "Loading videogames from csv file: #{filename}"

csv_data = File.read(filename)
videogames = CSV.parse(csv_data, headers: true, encoding: 'utf-8')

videogames.each do |v|
  custom = Customer.find_or_create_by(name: v['Name'])
  if custom && custom.valid?
    videogame = custom.videogames.create(
      rank: v['Rank'],
      name: v['Name'],
      platform: v['Platform'],
      year: v['Year'],
      genre: v['Genre'],
      publisher: v['Publisher'],
      global_sales: v['Global_Sales']
    )
    puts "Invalid movie #{v['Name']}" unless videogame&.valid?
  else
    puts "Invalid Customer: #{v['Name']} for videogame: #{v['Name']}"
  end
end
