# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Cat.create(birth_date: 2005, color: 'white', name: 'Jared', sex: 'M', description: "This is my first cat named Jared" )
Cat.create(birth_date: 2000, color: 'black', name: 'Ron', sex: 'M', description: "Ron is cool" )
Cat.create(birth_date: 2002, color: 'orange', name: 'Jess', sex: 'F', description: "Jess is the best" )
