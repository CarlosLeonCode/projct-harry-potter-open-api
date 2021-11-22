class Api::V1::GenresController < ApiController
    
    def index
        genres = Genre.all
        data = GenreSerializer.new genres
        json_response(data, :ok)
    end
  
    def show
        data = GenreSerializer.new(genre)
        json_response(data, :ok)
    end
    
    private 

    def genre 
        @genre ||= Genre.find(params.dig(:id))
    end 
end
