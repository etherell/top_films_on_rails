# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Country.create(name: 'Belgium', population: 10839905)
# Country.create(name: 'Netherlands', population: 16680000)
# Country.create(name: 'Ukraine', population: 31753159)

country_list = [ 
    [ "Germany", 8183100 ],
    [ "Russia", 212313124 ],
    [ "USA", 312312312 ]
]

country_list.each do |name, population| 
    Country.create( name: name, population: population)
end
