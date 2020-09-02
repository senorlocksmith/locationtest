class Setting < ApplicationRecord
    belongs_to :project
    validates :name, :presence => true
    has_many :location_associations
    has_many :properties, through: :location_associations
    


end
