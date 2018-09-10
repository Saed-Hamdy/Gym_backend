class GymLocation < ApplicationRecord
	belongs_to :gym_entity

	 scope :get_gyms_id_by_area, -> (area) {where(:location =>area)}

	# scope :get_classes_from_gym, ->(gym_id) {where(:gym_entity_id => gym_id) }
end
