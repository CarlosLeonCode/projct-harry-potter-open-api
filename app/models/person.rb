class Person < ApplicationRecord
  validates_presence_of :name, :lastname
  belongs_to :genre
end
