class StudentSerializer < ActiveModel::Serializer
  attributes :pet_name, :pet_img

  belongs_to :school
  belongs_to :school_house
end
