class StatesController < ApplicationController


def index

@country= Country.find_by_country(params[:country_id])
#@states=State.where(:country_id => params[:country_id])
@states=@country.states

render json: @states

end


def show
@country= Country.find_by_country(params[:country_id])

@state=@country.states.find_by_state(params[:id])
render json: @state

end


end
