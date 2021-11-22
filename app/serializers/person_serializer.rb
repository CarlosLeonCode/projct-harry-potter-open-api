class PersonSerializer
  include JSONAPI::Serializer

  attributes :id, :name, :lastname, :real_photo, :cartoon_photo

  attribute :wizard do |object|
    object.wizard.nil? ? false : true 
  end

  attribute :student do |object|
    object.student.nil? ? false : true
  end

  attribute :genre do |object|
    object.genre.name
  end
end
