class GymRating < ApplicationRecord
	belongs_to :gym_entity
	belongs_to :user
end
