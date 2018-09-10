class GymClass < ApplicationRecord
	belongs_to :gym_entity
	scope :get_classes_from_gym, ->(gym_id) {where(:gym_entity_id => gym_id) }
	scope :get_class_from_gym, ->(class_id) {where(:id => class_id) }
end
