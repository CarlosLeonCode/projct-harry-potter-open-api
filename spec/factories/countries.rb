FactoryBot.define do
  factory :country do
    name { Faker::Movies::HarryPotter.location  }
  end
end
