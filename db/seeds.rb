# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

zed = Person.create!(first_name: "Zed", last_name: "Flintstone", gender: 'male')
jed = Person.create!(first_name: "Jed", last_name: "Flintstone", gender: 'male')
PersonRelationship.create!(person_one: zed, role_one: "sibling", person_two: jed, role_two: "sibling")

rock = Person.create!(first_name: "Rockbottom", last_name: "Flintstone", gender: 'male')
PersonRelationship.create!(person_one: jed, role_one: "parent", person_two: rock, role_two: "child")

ed = Person.create!(first_name: "Ed", last_name: "Flintstone", gender: 'male')
PersonRelationship.create!(person_one: rock, role_one: "parent", person_two: ed, role_two: "child")

giggles = Person.create!(first_name: "Giggles", last_name: "Flintstone", gender: 'male')
PersonRelationship.create!(person_one: rock, role_one: "parent", person_two: giggles, role_two: "child")
PersonRelationship.create!(person_one: ed, role_one: "sibling", person_two: giggles, role_two: "sibling")

tex = Person.create!(first_name: "Tex", last_name: "Hardrock", gender: 'male')
edna = Person.create!(first_name: "Edna", last_name: "Flintstone", gender: 'female', given_last_name: "Hardrock")
PersonRelationship.create!(person_one: tex, role_one: "sibling", person_two: edna, role_two: "sibling")
PersonRelationship.create!(person_one: ed, role_one: "spouse", person_two: edna, role_two: "spouse")

fred = Person.create!(first_name: "Fred", last_name: "Flintstone", gender: 'male')
PersonRelationship.create!(person_one: ed, role_one: "parent", person_two: fred, role_two: "child")
PersonRelationship.create!(person_one: edna, role_one: "parent", person_two: fred, role_two: "child")

joe = Person.create!(first_name: "Joe", last_name: "Rockhead", gender: 'male')
PersonRelationship.create!(person_one: joe, role_one: "friend", person_two: fred, role_two: "friend")

stoney = Person.create!(first_name: "Stoney", last_name: "Curtis", gender: 'male')
perry = Person.create!(first_name: "Perry", last_name: "Masonry", gender: 'male' )
arnlod = Person.create!(first_name: "Arnold", last_name: "Granite", gender: 'male')

ricky = Person.create!(first_name: "Ricky", last_name: "Slaghoople", gender: 'male')
pearl = Person.create!(first_name: "Pearl", last_name: "Slaghoople", gender: 'female')
PersonRelationship.create!(person_one: ricky, role_one: "spouse", person_two: pearl, role_two: "spouse")

wilma = Person.create!(first_name: "Wilma", last_name: "Flintstone", gender: 'female')
PersonRelationship.create!(person_one: ricky, role_one: "parent", person_two: wilma, role_two: "child")
PersonRelationship.create!(person_one: pearl, role_one: "parent", person_two: wilma, role_two: "child")
PersonRelationship.create!(person_one: wilma, role_one: "spouse", person_two: fred, role_two: "spouse")

pebbles = Person.create!(first_name: "Pebbles", last_name: "Flintstone", gender: "female")
PersonRelationship.create!(person_one: wilma, role_one: "parent", person_two: pebbles, role_two: "child")
PersonRelationship.create!(person_one: fred, role_one: "parent", person_two: pebbles, role_two: "child")

bob = Person.create!(first_name: "Bob", last_name: "Rubble", gender: 'male')
flo = Person.create!(first_name: "Flo Slate", last_name: "Rubble", gender: 'female')
PersonRelationship.create!(person_one: bob, role_one: "spouse", person_two: flo, role_two: "spouse")

barney = Person.create!(first_name: "Barney", last_name: "Rubble", gender: 'male')
PersonRelationship.create!(person_one: bob, role_one: "parent", person_two: barney, role_two: "child")
PersonRelationship.create!(person_one: flo, role_one: "parent", person_two: barney, role_two: "child")
PersonRelationship.create!(person_one: barney, role_one: "friend", person_two: fred, role_two: "friend")


dusty = Person.create!(first_name: "Dusty", last_name: "Rubble", gender: 'male')
PersonRelationship.create!(person_one: bob, role_one: "parent", person_two: dusty, role_two: "child")
PersonRelationship.create!(person_one: flo, role_one: "parent", person_two: dusty, role_two: "child")

brick = Person.create!(first_name: "Brick", last_name: "McBricker", gender: "male")
jean = Person.create!(first_name: "Jean", last_name: "McBricker", gender: "female")
PersonRelationship.create!(person_one: brick, role_one: "spouse", person_two: jean, role_two: "spouse")

betty = Person.create!(first_name: "Betty", last_name: "Rubble", given_last_name: "McBricker", gender: "female")
PersonRelationship.create!(person_one: brick, role_one: "parent", person_two: betty, role_two: "child")
PersonRelationship.create!(person_one: jean, role_one: "parent", person_two: betty, role_two: "child")
PersonRelationship.create!(person_one: betty, role_one: "friend", person_two: wilma, role_two: "spouse")

brad = Person.create!(first_name: "Brad", last_name: "McBricker", gender: "male")
PersonRelationship.create!(person_one: brick, role_one: "parent", person_two: brad, role_two: "child")
PersonRelationship.create!(person_one: jean, role_one: "parent", person_two: brad, role_two: "child")

bamm = Person.create!(first_name: "Bamm-Bamm", last_name: "Rubble", gender: 'male')
PersonRelationship.create!(person_one: betty, role_one: "parent", person_two: bamm, role_two: "child")
PersonRelationship.create!(person_one: barney, role_one: "parent", person_two: bamm, role_two: "child")

PersonRelationship.create!(person_one: pebbles, role_one: "spouse", person_two: bamm, role_two: "spouse")

roxy = Person.create!(first_name: "Roxy", last_name: "Rubble", gender: "female")
PersonRelationship.create!(person_one: betty, role_one: "parent", person_two: roxy, role_two: "child")
PersonRelationship.create!(person_one: barney, role_one: "parent", person_two: roxy, role_two: "child")

chip = Person.create!(first_name: "Chip", last_name: "Rubble", gender: "male")
PersonRelationship.create!(person_one: betty, role_one: "parent", person_two: chip, role_two: "child")
PersonRelationship.create!(person_one: barney, role_one: "parent", person_two: chip, role_two: "child")
