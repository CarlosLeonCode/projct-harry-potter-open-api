module Response 
    extend ActiveSupport::Concern

    def json_response(data , status, message)
        render json: {
            data: data,
            message: message,
            status: status
        }
    end

end