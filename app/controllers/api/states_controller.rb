class Api::StatesController < ApplicationController
  def index
    @states = State.all
    render json: { state: @states.map do |state|
             {
               id: state.id,
               name: state.state,
               share_unemployed_seasonal: state.share_unemployed_seasonal,
               share_population_in_metro_areas: state.share_population_in_metro_areas,
               share_population_with_high_school_degree: state.share_population_with_high_school_degree,
               abbrev: Abbreviation.find_by(state: state.state).code,
             }
           end }
  end

  def show
    state_abbrev = Abbreviation.find_by(code: params[:code].upcase)
    @state = State.find_by(state: state_abbrev.state)
    render json: {
             id: @state.id,
             name: @state.state,
             share_unemployed_seasonal: @state.share_unemployed_seasonal,
             share_population_in_metro_areas: @state.share_population_in_metro_areas,
             share_population_with_high_school_degree: @state.share_population_with_high_school_degree,
           }
  end
end
