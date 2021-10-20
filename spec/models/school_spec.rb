require 'rails_helper'

RSpec.describe School, type: :model do
  describe "relations" do 
    it { should have_many(:houses) }
  end
end
