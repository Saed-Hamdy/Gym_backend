class Api::V1::GymsController < ApplicationController
  def index
  	logger.debug("****************************testiiiiiiiiiiiing****************************")
	@gyms = GymEntity.all
	json_response(@gyms)
  end

  def show

  	logger.debug("\n****************************testiiiiiiiiiiiing  showw****************************\n")
	@gyms = GymEntity.find(params[:id])
    json_response(@gyms)
  end


  def area 
  	logger.debug("\n****************************testiiiiiiiiiiiing  areaa  ****************************\n")

  	@gyms_id=GymLocation.get_gyms_id_by_area(params[:area]).pluck(:gym_entity_id)
	# json_response(@gyms_id) 
  	 @gyms=GymEntity.where(:id => @gyms_id)
  	 json_response(@gyms)
  end 

  def  name
  	logger.debug("\n****************************testiiiiiiiiiiiing  Name  ****************************\n")
  	logger.debug("#{params[:name]}  \n")
  	@gyms=GymEntity.where("name like ?","%#{params[:name]}%")
  	User.joins(:job).where("job_name like ? and name like ?","%Dummy%", "%Bzupnick")
  	json_response(@gyms)
  	
  end
end