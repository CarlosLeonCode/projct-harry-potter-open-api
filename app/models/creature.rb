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
class Creature < ApplicationRecord
    validates_presence_of :name, :img
end