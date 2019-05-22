class CountriesController < ApplicationController

def index
@countries=Country.all

render json: @countries
end

def show
@country=Country.find_by_country(params[:id])
render json: @country
end

  private

  def country_params
  params.require(:country).permit(:country)
  end
  end