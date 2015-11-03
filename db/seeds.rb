# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@u1 = User.create(username: "connie", description: "California Condor", password: "12345678")
@u1 = User.create(username: "paul", description: "Giant Panda", password: "12345678")
@u1 = User.create(username: "elsa", description: "African Elephant", password: "12345678")
