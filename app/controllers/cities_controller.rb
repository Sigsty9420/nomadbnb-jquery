class CitiesController < ApplicationController

  private

  def city_params
    params.require(:city).permit(:name, :country)
  end
end
