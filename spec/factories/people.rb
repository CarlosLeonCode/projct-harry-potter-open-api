FactoryBot.define do
  factory :person do
    name { Faker::Movies::HarryPotter.character } 
    lastname { Faker::Movies::HarryPotter.character }
    genre
    real_photo { Faker::Movies::HarryPotter.book }
    cartoon_photo { Faker::Movies::HarryPotter.book }
  end
end
