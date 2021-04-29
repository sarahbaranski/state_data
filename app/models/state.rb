class State < ApplicationRecord
  def state_data
    states_hash = State.pluck(:name, :median_household_income, :share_unemployed_seasonal, :share_population_in_metro_areas, :share_population_with_high_school_degree, :id).to_h

    data = []
    CSV.foreach("lib/seeds/state_data.csv", headers: true) do |row|
      state_data = states_hash[row[:name]]
      data << { state_id: state_id state: row[:state]}
    end
    State.import(data)
  end
end
