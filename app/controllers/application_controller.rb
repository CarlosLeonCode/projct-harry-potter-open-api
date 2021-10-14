class ApplicationController < ActionController::API
    
    # concerns
    include Response

    # GET -> /api_health
    def health
        begin
            json_response({}, :ok, 'API is working!')
        rescue => exception
            json_response({}, :internal_server_error, 'Ooops API is not working!') 
        end
    end 
end
