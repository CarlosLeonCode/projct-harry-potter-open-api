class WizardSerializer 
    include JSONAPI::Serializer 

    attributes :id, :name, :lastname, :real_photo, :cartoon_photo
    
    attribute :wand do |object|
        object.wizard.nil? ? nil : object.wizard.wand_name
    end

end