class Student < ApplicationRecord
  belongs_to :school_house
  belongs_to :school
  belongs_to :person
end
