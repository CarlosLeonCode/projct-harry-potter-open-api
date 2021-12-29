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
FactoryBot.define do 
    factory :school_house do 
        name { Faker::Movies::HarryPotter.house }
        url_logo { 'https://i.ibb.co/cTv2VKK/harry-cartoon.jpg' }
        association :school
    end
end
