module Response 
    extend ActiveSupport::Concern

    def json_response(data , status, message)
        data[:status] = status 
        data[:message] = message

        render json: data, status: status
    end

end