class PeopleSerializer
  include JSONAPI::Serializer
  attributes :name, :lastname, :real_photo, :cartoon_photo
  has_one :genre
end
