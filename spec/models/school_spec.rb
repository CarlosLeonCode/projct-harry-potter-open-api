# == Schema Information
#
# Table name: schools
#
#  id         :bigint           not null, primary key
#  name       :string
#  url_logo   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe School, type: :model do
  describe "relations" do 
    it { should have_many(:houses) }
  end
end
