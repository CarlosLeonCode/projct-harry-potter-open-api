class Api::V1::People::StudentsController < ApiController
    
    def index 
        students = Person.by_students
        data = StudentSerializer.new(students)
        json_response(data, :ok)
    end

    def show 
        data = StudentSerializer.new(student)
        json_response(data, :ok)
    end 

    private

    def student
        @student ||= Person.find(params.dig(:id))
    end
end