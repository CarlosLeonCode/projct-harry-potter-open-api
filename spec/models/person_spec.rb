# == Schema Information
#
# Table name: people
#
#  id              :bigint           not null, primary key
#  name            :string
#  lastname        :string
#  genre_id        :bigint           not null
#  real_photo      :text
#  cartoon_photo   :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  ocupation       :string
#  wand            :string
#  patronus        :string
#  school_house_id :bigint
#
require 'rails_helper'

RSpec.describe Person, type: :model do
  describe "validations" do 
    context "with presence" do 
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:lastname) }
    end
  end

  describe "relations" do 
    it { should belong_to(:genre) }
    it { should have_one(:wizard) }
    it { should have_one(:student) }
  end
end
