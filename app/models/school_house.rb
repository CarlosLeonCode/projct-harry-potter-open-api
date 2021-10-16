class SchoolHouse < ApplicationRecord
    validates_presence_of :name, :url_logo
    
    belongs_to :school
end
