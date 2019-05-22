class CitiesController < ApplicationController


def index

@cities=City.all


if params[:state_id] && params[:country_id]
@cities=@cities.where(:country_id => params[:country_id], :state_id => params[:state_id] )
render json: @cities

end

if params[:country_id]
@cities=@cities.where(:country_id => params[:country_id])
render json: @cities

else  

render json: @cities

end


end

end