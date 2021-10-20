module Response 
    extend ActiveSupport::Concern

    def json_response(data, status)
        render json: data, status: status
    end

end