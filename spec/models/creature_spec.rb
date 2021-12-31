# == Schema Information
#
# Table name: creatures
#
#  id         :bigint           not null, primary key
#  name       :string
#  related_to :string
#  skin_color :string
#  eye_color  :string
#  mortality  :string
#  img        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Creature, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
