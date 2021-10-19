class HouseSerializer
  include JSONAPI::Serializer

  attributes :name, :url_logo
  belongs_to :school
end
