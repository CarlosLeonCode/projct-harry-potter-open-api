class SchoolHouseSerializer
  include JSONAPI::Serializer
  
  attributes :id, :name, :url_logo
end
