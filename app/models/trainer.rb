class Trainer < ApplicationRecord
	belongs_to :user
	has_many :trainer_rating
end
