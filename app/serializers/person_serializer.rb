class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :lastname, :real_photo, :cartoon_photo

  has_one :genre
  has_one :wizard
  has_one :student
end
