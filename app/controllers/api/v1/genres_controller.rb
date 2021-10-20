class Api::V1::GenresController < ApiController
    
    before_action :set_genre, only: %i[ show ]

    def index
        genres = Genre.all
        json_response(genres, :ok)
    end
  
    def show
        genre = GenreSerializer.new(@genre).serializable_hash
        json_response(genre, :ok)
    end
   
    def create
        genre = Genre.create!(genre_params)
        json_response(genre, :created)
    end
    
    private 

    def set_genre 
        @genre = Genre.find(params.dig(:id))
    end 
end
