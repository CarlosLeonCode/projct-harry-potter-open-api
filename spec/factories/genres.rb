FactoryBot.define do
  factory :genre do
    name { Faker::Movies::HarryPotter.spell }
  end
end
