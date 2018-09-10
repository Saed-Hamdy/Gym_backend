class Api::V1::ClassesController < ApplicationController
        def index
		@classes = GymClass.get_classes_from_gym(params[:gym_id])
		json_response(@classes)
	end
	def show
		@classes = GymClass.get_class_from_gym(params[:id])
		json_response(@classes)
	end
end
