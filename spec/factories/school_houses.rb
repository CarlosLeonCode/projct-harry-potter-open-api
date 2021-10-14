FactoryBot.define do 
    factory :school_house do 
        name { Faker::Movies::HarryPotter.house }
    end
end