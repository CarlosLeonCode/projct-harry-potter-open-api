class Api::V1::People::WizardsController < ApiController

    def index 
        wizards = Person.by_wizards
        data = WizardSerializer.new(wizards)
        json_response(data, :ok)
    end

    def show 
        data = WizardSerializer.new(wizard)
        json_response(data, :ok)
    end

    private 
    
    def wizard
        @wizard ||= Person.find(params.dig(:id))
    end
end
