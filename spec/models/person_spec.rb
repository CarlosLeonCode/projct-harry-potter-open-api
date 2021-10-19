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
  end
end
