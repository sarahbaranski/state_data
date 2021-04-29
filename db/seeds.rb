# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

CSV.foreach(Rails.root.join("lib/seeds/state_data.csv"), headers: true) do |row|
  State.create({
    state: row[0],
    median_household_income: row[1],
    share_unemployed_seasonal: row[2],
    share_population_in_metro_areas: row[3],
    share_population_with_high_school_degree: row[4],
  })
end

# fields_to_insert = %w{ id state median_household_income share_unemployed_seasonal share_population_in_metro_areas share_population_with_high_school_degree }
# rows_to_insert = []

# CSV.foreach("lib/seeds/abreviations.csv", headers: true) do |row|
#   row_to_insert = row.to_hash.select { |k, v| fields_to_insert.include?(k) }
#   rows_to_insert << row_to_insert
# end
# State.import(rows_to_insert)
