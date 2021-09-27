class SchoolHasProfessor < ApplicationRecord
  belongs_to :school
  belongs_to :person
end
