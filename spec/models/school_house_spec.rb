# == Schema Information
#
# Table name: school_houses
#
#  id         :bigint           not null, primary key
#  name       :string
#  url_logo   :text
#  school_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe SchoolHouse, type: :model do
  describe 'validations' do

    context 'with presence' do 
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:url_logo) }
    end

    context 'with relations' do 
      it { should belong_to(:school) }
    end

  end
end
