class Genre < ApplicationRecord
    validates_presence_of :name

    has_many :people
end
