class Api::V1::InfoController < ApplicationController
  def areas
  	@areas =GymLocation.select(:location).uniq
  	json_response(@areas)
  end
end
