class Project < ApplicationRecord

    TYPES = ['feature' , 'pilot' , 'episodic' , 'commercial' , 'corporate' , 'other']

    has_many :settings, :dependent => :destroy

    validates :name, :presence => true
    validates :project_type, :inclusion => {:in => TYPES, :allow_blank => true}

end
