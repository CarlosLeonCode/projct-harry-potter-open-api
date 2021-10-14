class ApiController < ApplicationController
    # validations
    rescue_from StandardError do |exception|
        json_response({}, :internal_server_error, exception.message)
    end 

    rescue_from ActiveRecord::RecordInvalid do |exception|
        json_response({}, :unprocessable_entity, exception.message)
    end

    rescue_from ActiveRecord::RecordNotFound do |exception|
        json_response({}, :not_found, I18n.t('general.controller_responses.messages.find_error'))
    end
end