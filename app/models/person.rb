class Person < ApplicationRecord
  validates_presence_of :name, :lastname
  
  belongs_to :genre
  has_one :wizard
  has_one :student

  scope :by_wizards, -> { Person.joins(:wizard) }
  scope :by_students, -> { Person.joins(:student) }

end
