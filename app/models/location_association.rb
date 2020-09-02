class LocationAssociation < ApplicationRecord
    belongs_to :setting
    belongs_to :property
end
