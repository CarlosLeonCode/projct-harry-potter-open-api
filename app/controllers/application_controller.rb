class ApplicationController < ActionController::API
    
    # concerns
    include Response

    # GET -> /api_health
    def health
        begin
            json_response({status: :ok}, :ok)
        rescue => exception
            json_response({ status: :internal_server_error}, :internal_server_error) 
        end
    end 
end
