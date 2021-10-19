class SchoolSerializer
  include JSONAPI::Serializer
  attributes :name, :logo
end
