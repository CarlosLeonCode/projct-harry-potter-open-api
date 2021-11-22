class Api::V1::SchoolsController < ApiController
    
    def index
        schools = School.all
        data = SchoolSerializer.new schools
        json_response(data, :ok)
    end

    def show
        data = SchoolSerializer.new school
        json_response(data, :ok)
    end 

    def houses
        data = SchoolHouseSerializer.new school.school_houses
        json_response(data, :ok)
    end

    private

    def school 
        @school ||= School.find(params.dig(:id))
    end
end
