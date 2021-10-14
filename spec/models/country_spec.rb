require 'rails_helper'

RSpec.describe Country, type: :model do

  describe 'validations' do 

    context 'with presence' do 
      it { should validate_presence_of(:name) }
    end
    
    context 'with relations' do 
      it { should have_many(:people) }
    end
  end 
end
