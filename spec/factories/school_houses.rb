FactoryBot.define do 
    factory :school_house do 
        name { Faker::Movies::HarryPotter.house }
        url_logo { 'https://i.ibb.co/cTv2VKK/harry-cartoon.jpg' }
        association :school
    end
end