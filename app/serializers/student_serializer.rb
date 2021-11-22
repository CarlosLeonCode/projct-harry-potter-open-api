class StudentSerializer
    include JSONAPI::Serializer 

    attributes :name, :lastname, :real_photo, :cartoon_photo

    attribute :school do |object|
        object.student.nil? ? nil : object.student.school.name
    end

    attribute :school_house do |object|
        object.student.nil? ? nil : object.student.school_house.name
    end

    attribute :pet do |object|
        object.student.nil? ? nil : object.student.pet_name 
    end

    attribute :pet_image do |object|
        object.student.nil? ? nil : object.student.pet_img
    end
end