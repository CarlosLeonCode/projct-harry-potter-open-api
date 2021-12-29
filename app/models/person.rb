# == Schema Information
#
# Table name: people
#
#  id              :bigint           not null, primary key
#  name            :string
#  lastname        :string
#  genre_id        :bigint           not null
#  real_photo      :text
#  cartoon_photo   :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  ocupation       :string
#  wand            :string
#  patronus        :string
#  school_house_id :bigint
#
class Person < ApplicationRecord
  validates_presence_of :name
  
  belongs_to :genre
  belongs_to :school_house, optional: true

  scope :students, -> { self.where("ocupation LIKE '%Student%'") }
end
