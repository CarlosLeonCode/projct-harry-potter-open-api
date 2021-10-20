class Person < ApplicationRecord
  validates_presence_of :name, :lastname
  
  belongs_to :genre
  has_one :wizard
  has_one :student
end
