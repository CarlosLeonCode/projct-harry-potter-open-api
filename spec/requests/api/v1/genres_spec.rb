require 'rails_helper'

RSpec.describe "Api::V1::Genres", type: :request do
  let!(:genres) { create_list(:genre, 15) }

  describe "#index" do    
    context 'with all records' do   
      before do 
        get '/api/v1/genres'
        
      end 

      it { expect(response).to have_http_status(:ok) } 
      it do 
        payload = JSON.parse response.body
        expect(payload.dig('data').length).to eq(15) 
      end 
    end
  end

  describe '#create' do 
    context 'when params are complete' do 
      it do 
        post('/api/v1/genres', params: {
          genre: {
            name: 'Male'
          }
        })
        expect(response).to have_http_status(:created)
      end
    end

    context 'when params missing' do 
      it do
        post('/api/v1/genres', params: { genre: { }})
        expect(response).to have_http_status(:internal_server_error)
      end
    end
  end



end
