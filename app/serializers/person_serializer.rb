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
class PersonSerializer
  include JSONAPI::Serializer

  attributes :id, :name, :lastname, :real_photo, :cartoon_photo, :ocupation, :wand, :patronus

  attribute :school_house do |object|
    object.school_house.nil? ? nil : object.school_house.name
  end

  attribute :genre do |object|
    object.genre.nil? ? nil : object.genre.name
  end
end
