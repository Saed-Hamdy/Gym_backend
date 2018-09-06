class User < ApplicationRecord
	has_many :gym_entity
	has_many :gym_rating
	has_many :trainer_rating
end
