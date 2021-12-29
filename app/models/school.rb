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
class School < ApplicationRecord
  has_many :school_houses
  has_many :students
end
