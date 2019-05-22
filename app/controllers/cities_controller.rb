
class CitiesController < ApplicationController


def index

@cities=City.all


if params[:state_id] && params[:country_id]
	@country= Country.find_by_country(params[:country_id])
    @state=@country.states.find_by_state(params[:state_id])
    @cities=@state.cities
    render json: @cities
#@cities=@cities.where(:country_id => params[:country_id], :state_id => params[:state_id] )
#render json: @cities
else 
	@country= Country.find_by_country(params[:country_id])
@cities=@country.cities
render json: @cities

end

end

end