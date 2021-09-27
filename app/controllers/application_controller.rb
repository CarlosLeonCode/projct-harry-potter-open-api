class ApplicationController < ActionController::API
    
    # validations
    rescue_from Exception do |exception|
        json_response([], :internal_error, exception.message)
    end 

    rescue_from ActiveRecord::RecordInvalid do |exception|
        json_response([], :unprocessable_entity, exception.message)
    end

    # concerns
    include Response

    # GET -> /api_health
    def health
        begin
            json_response([], :ok, 'API is working!')
        rescue => exception
            json_response([], :internal_server_error, 'Ooops API is not working!') 
        end
    end 
end
