class Api::V1::SchoolHousesController < ApiController

    def index
        houses = SchoolHouse.all
        data = SchoolHouseSerializer.new houses
        json_response(data, :ok)
    end

    def show
        data = SchoolHouseSerializer.new house
        json_response(data, :ok)
    end

    private 

    def house 
        @school_house ||= SchoolHouse.find(params.dig(:id))
    end 
end
