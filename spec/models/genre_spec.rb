# == Schema Information
#
# Table name: genres
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Genre, type: :model do

  describe 'validations' do 

    context 'with presence' do 
      it { should validate_presence_of(:name) }
    end

    context 'with relations' do 
      it { should have_many(:people) }
    end

    context 'when record is save' do 
      let(:genre) { build(:genre) }
      it { expect(genre.save).to eq(true) }
    end
  end
end
