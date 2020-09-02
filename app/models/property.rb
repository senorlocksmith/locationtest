class Property < ApplicationRecord
    has_many :location_associations
    has_many :settings, through: :location_associations
    
end
