class Api::StatesController < ApplicationController
  def get_states

    @states = State.all
    render json: { state: @states.map do |state|
      {
        id: state.id,
        name: state.state,
        share_unemployed_seasonal: state.share_unemployed_seasonal,
        share_population_in_metro_areas: state.share_population_in_metro_areas,
        share_population_with_high_school_degree: state.share_population_with_high_school_degree
      }
    end}
  end

  # def show
  # end
end


