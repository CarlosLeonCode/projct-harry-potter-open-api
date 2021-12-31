class CreatureSerializer
  include JSONAPI::Serializer
  attributes :name, :related_to, :skin_color, :eye_color, :mortality, :img
end
