class School < ApplicationRecord
  has_many :school_houses
  has_many :students
end
