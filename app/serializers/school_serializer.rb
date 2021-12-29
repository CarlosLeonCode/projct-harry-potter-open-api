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
class SchoolSerializer
  include JSONAPI::Serializer
  
  attributes :id, :name, :url_logo
end
