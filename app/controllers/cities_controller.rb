class CitiesController < ApplicationController


def index

#if params[:country_id]	 and  params[:state_id]
#@cities=City.where(:cityable_id => params[:country_id] )
#@cities=@cities.where(:cityable_id => params[:state_id],  :cityable_type => "State" )
#else
#@cities=City.all
#end
@cities=City.all	
	render json: @cities
#end




end



#@cities=City.where(:cityable_id => @country.try(:id)).all
 #@locations = Location.order("locations.id ASC").where(:company_id => @company.try(:id))
