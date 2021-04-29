class State < ApplicationRecord
  require "csv"

  fields_to_insert = %w{ id state median_household_income share_unemployed_seasonal share_population_in_metro_areas share_population_with_high_school_degree }
  rows_to_insert = []

  CSV.foreach("abreviations.csv", headers: true) do |row|
    row_to_insert = row.to_hash.select { |k, v| fields_to_insert.include?(k) }
    rows_to_insert << row_to_insert
  end
  State.import(rows_to_insert)
end
