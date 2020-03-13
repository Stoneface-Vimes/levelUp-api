# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "securerandom"
require "faker"

quest_status = ["completed", "failed", "abandoned", "underway"]

puts "Seeding Data ..."

# Only run on development (local) instances not on production, etc.
unless Rails.env.development?
  puts "Development seeds only (for now)!"
  exit 0
end

## QUESTS

puts "Creating Quests ..."

Quest.destroy_all

quest1 = Quest.find_or_create_by!({
  id: SecureRandom.uuid,
  party_id: SecureRandom.uuid,
  user_id: Faker::Number.decimal_part(digits: 2),
  mentor_id: Faker::Number.decimal_part(digits: 2),
  title: Faker::Lorem.word,
  description: Faker::Lorem.sentence,
  status: quest_status.sample,
  date_finished: Faker::Time.between(from: DateTime.now, to: DateTime.now + 5)
})

quest2 = Quest.find_or_create_by!({
  id: SecureRandom.uuid,
  party_id: SecureRandom.uuid,
  user_id: Faker::Number.decimal_part(digits: 2),
  mentor_id: Faker::Number.decimal_part(digits: 2),
  title: Faker::Lorem.word,
  description: Faker::Lorem.sentence,
  status: quest_status.sample,
  date_finished: Faker::Time.between(from: DateTime.now, to: DateTime.now + 5)
})

## NODES

puts "Creating Nodes ..."

Node.destroy_all

node1 = Node.find_or_create_by!({
  title: Faker::Lorem.word,
  description: Faker::Lorem.sentence,
  is_complete?: Faker::Boolean.boolean,
  quest_id: quest1.id,
  date_finished: Faker::Time.between(from: DateTime.now, to: quest1.date_finished)
})

node2 = Node.find_or_create_by!({
  title: Faker::Lorem.word,
  description: Faker::Lorem.sentence,
  is_complete?: Faker::Boolean.boolean,
  quest_id: quest1.id,
  date_finished: Faker::Time.between(from: DateTime.now, to: quest1.date_finished)
})

node3 = Node.find_or_create_by!({
  title: Faker::Lorem.word,
  description: Faker::Lorem.sentence,
  is_complete?: Faker::Boolean.boolean,
  quest_id: quest1.id,
  date_finished: Faker::Time.between(from: DateTime.now, to: quest1.date_finished)
})

node4 = Node.find_or_create_by!({
  title: Faker::Lorem.word,
  description: Faker::Lorem.sentence,
  is_complete?: Faker::Boolean.boolean,
  quest_id: quest1.id,
  date_finished: Faker::Time.between(from: DateTime.now, to: quest1.date_finished)
})

node5 = Node.find_or_create_by!({
  title: Faker::Lorem.word,
  description: Faker::Lorem.sentence,
  is_complete?: Faker::Boolean.boolean,
  quest_id: quest1.id,
  date_finished: Faker::Time.between(from: DateTime.now, to: quest1.date_finished)
})

node6 = Node.find_or_create_by!({
  title: Faker::Lorem.word,
  description: Faker::Lorem.sentence,
  is_complete?: Faker::Boolean.boolean,
  quest_id: quest2.id,
  date_finished: Faker::Time.between(from: DateTime.now, to: quest2.date_finished)
})

node7 = Node.find_or_create_by!({
  title: Faker::Lorem.word,
  description: Faker::Lorem.sentence,
  is_complete?: Faker::Boolean.boolean,
  quest_id: quest2.id,
  date_finished: Faker::Time.between(from: DateTime.now, to: quest2.date_finished)
})

node8 = Node.find_or_create_by!({
  title: Faker::Lorem.word,
  description: Faker::Lorem.sentence,
  is_complete?: Faker::Boolean.boolean,
  quest_id: quest2.id,
  date_finished: Faker::Time.between(from: DateTime.now, to: quest2.date_finished)
})

node9 = Node.find_or_create_by!({
  title: Faker::Lorem.word,
  description: Faker::Lorem.sentence,
  is_complete?: Faker::Boolean.boolean,
  quest_id: quest2.id,
  date_finished: Faker::Time.between(from: DateTime.now, to: quest2.date_finished)
})

node10 = Node.find_or_create_by!({
  title: Faker::Lorem.word,
  description: Faker::Lorem.sentence,
  is_complete?: Faker::Boolean.boolean,
  quest_id: quest2.id,
  date_finished: Faker::Time.between(from: DateTime.now, to: quest2.date_finished)
})

