require 'rails_helper'

RSpec.describe Wizard, type: :model do
  context 'with relations' do 
    it { should belong_to(:person) }
  end
end
