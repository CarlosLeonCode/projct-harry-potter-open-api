require 'rails_helper'

RSpec.describe "Houses", type: :request do
  let!(:school) { create(:school) }
  let(:url_log) { 'https://i.ibb.co/cTv2VKK/harry-cartoon.jpg' }

  describe "#create" do
    context "when create a record successfully" do
      it do
        post('/api/v1/school_houses', params: { house: { name: 'Gryffindor', school_id: school.id, url_logo: url_log } })
        expect(response).to have_http_status(:created)
      end
    end

    context 'when pass empty data' do
      it do 
        post('/api/v1/school_houses', params: { house: {} })
        expect(response).to have_http_status(:internal_server_error)
      end
    end
  end 

  describe "#index" do
    before do 
      5.times do 
        post('/api/v1/school_houses', params: { 
          house: { name: 'Gryffindor', school_id: school.id, url_logo: url_log } 
        })
      end
      
      get('/api/v1/school_houses')
    end

    context "with all houses records" do
      it  do
        payload = JSON.parse response.body
        
        expect(payload.dig('data').count).to be > 0
      end
    end 

    context 'with ok status' do
      it { expect(response).to have_http_status(:ok) }
    end
  end

  describe "#show" do 
    context 'With a record details' do 
      it do 
        school_house = create(:school_house, school_id: school.id)
        get("/api/v1/school_houses/#{ school_house.id }")
        payload = JSON.parse response.body

        expect(response).to have_http_status(:ok)
        expect(payload.dig('data', 'id').to_i).to eq(school_house.id)        
      end
    end 
  end

  describe "#update" do
     
    context "when name change" do 
      it do 
        school_house = create(:school_house, school_id: school.id)
        put("/api/v1/school_houses/#{ school_house.id }", params: {
          house: { name: 'updated' } 
        })
      
        expect(response).to have_http_status(:ok)        
        
        payload = JSON.parse response.body
        expect(payload.dig('data', 'attributes' ,'name')).to eq('updated')
      end
    end
  end
end