class Api::V1::HousesController < ApplicationController

    before_action :set_house, only: %i[ show ]

    def index
    end

    # POST -> api/v1/houses
    def create
        record = SchoolHouse.create!(house_params)
        if record
            json_response([{ id: record.id }], :created, "Record was created successfully! 🤓")
        else 
            json_response([], :unprocessable_entity, "Record was not created 😵‍💫")
        end 
    end 

    def update

    end 

    def delete 

    end

    def show
        #  For use serializer 
    end 

    private 

    def house_params
        params.require(:house).permit(:name)
    end 

    def set_house 
        @house = SchoolHouse.find(params.dig(:id))
    end 
end
