class Api::V1::SchoolsController < ApiController

    before_action :set_school, only: [:show, :houses]
    
    def index
        schools = School.all
        json_response(schools, :ok)
    end

    def show
        json_response(@school, :ok)
    end 

    def houses
        school_houses = @school.school_houses
        json_response(school_houses, :ok)
    end

    private

    def set_school 
        @school = School.find(params.dig(:id))
    end
end
