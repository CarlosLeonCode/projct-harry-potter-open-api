class HouseSerializer
  include JSONAPI::Serializer

  attributes :name, :url_logo
end
