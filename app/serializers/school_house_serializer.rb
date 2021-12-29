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
class SchoolHouseSerializer
  include JSONAPI::Serializer
  
  attributes :id, :name, :url_logo
end
