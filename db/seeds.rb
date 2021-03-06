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

CSV.foreach(Rails.root.join("lib/seeds/abbreviations.csv"), headers: true) do |row|
  Abbreviation.create({
    state: row[0],
    abbrev: row[1],
    code: row[2],
  })
end
