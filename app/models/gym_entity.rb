class GymEntity < ApplicationRecord
	belongs_to :user 
	has_many :gym_location
	has_many :gym_rating
	has_many :gym_class
end
