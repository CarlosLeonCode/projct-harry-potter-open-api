class Api::V1::HealthController < ApiController

    def status
        json_response({ status: :ok }, :ok)
    end 
end