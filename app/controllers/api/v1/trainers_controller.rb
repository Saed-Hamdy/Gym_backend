class Api::V1::TrainersController < ApplicationController
  
  def index
  	logger.debug("****************************testiiiiiiiiiiiing****************************")
	@trainers=Trainer.all
	json_response(@trainers)
  end

  def show

  	logger.debug("\n****************************testiiiiiiiiiiiing  showw****************************\n")
	@trainer = Trainer.find(params[:id])
    json_response(@trainer)
  end


 #  def area 
 #  	logger.debug("\n****************************testiiiiiiiiiiiing  areaa  ****************************\n")

 #  	@gyms_id=GymLocation.get_gyms_id_by_area(params[:area]).pluck(:gym_entity_id)
	# # json_response(@gyms_id) 
 #  	 @gyms=GymEntity.where(:id => @gyms_id)
 #  	 json_response(@gyms)
 #  end 

  def  name
  	logger.debug("\n****************************testiiiiiiiiiiiing  Name  ****************************\n")

  	@trainers=Trainer.joins(:user).where("fName like ? or lName like ?","%#{params[:name]}%","%#{params[:name]}%").select(:fName)
  	json_response(@trainers)
  	
  end

end