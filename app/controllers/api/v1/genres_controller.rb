class Api::V1::GenresController < ApplicationController
    
    before_action :set_genre, only: %i[ show ]

    def index
        genres = Genre.all
        data = GenreSerializer.new(genres).serializable_hash
        json_response(
            data,
            :ok,
            I18n.t('general.controller_responses.messages.success_transaction')
        )
    end
  
    def show
        data = GenreSerializer.new(@genre).serializable_hash
        json_response(
            data,
            :ok,
            I18n.t('general.controller_responses.messages.find_ok')
        )
    end
   
    def create
        genre = Genre.create!(genre_params)
        data = GenreSerializer.new(genre).serializable_hash
        json_response(
            data,
            :created,
            I18n.t('general.controller_responses.messages.created_ok')
        )
    end
  
    def update;end
  
    def destroy;end

    private 

    def genre_params
        raise Errors::ParamsMissing.new I18n.t('general.controller_responses.messages.params_missing') unless params.dig(:genre).present?
        params.require(:genre).permit(:name)
    end

    def set_genre 
        @genre = Genre.find(params.dig(:id))
    end 
end
