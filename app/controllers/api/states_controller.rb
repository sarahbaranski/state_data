class Api::StatesController < ApplicationController
  def get_states
    states = State.all
    render json: { state: states }
  end
end
