class Api::V1::SchoolHousesController < ApiController

    before_action :set_house, only: [:show]

    def index
        houses = SchoolHouse.all
        json_response(houses, :ok)
    end

    def show
        json_response(@school_house, :ok)
    end

    private 

    def set_house 
        @school_house = SchoolHouse.find(params.dig(:id))
    end 
end
