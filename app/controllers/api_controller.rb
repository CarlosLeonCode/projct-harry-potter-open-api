class ApiController < ApplicationController
    # validations
    rescue_from StandardError do |exception|
        json_response({
            status: :internal_server_error,
            message: exception.message
        }, :internal_server_error)
    end 

    rescue_from ActiveRecord::RecordInvalid do |exception|
        json_response({
           status: :unprocessable_entity,
           message: exception.message
        }, :unprocessable_entity)
    end

    rescue_from ActiveRecord::RecordNotFound do |exception|
        json_response({
            status: :not_found,
            message: I18n.t('general.controller_responses.messages.find_error')
        }, :not_found)
    end
end