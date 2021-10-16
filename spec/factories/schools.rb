FactoryBot.define do
  factory :school do
    name { Faker::Movies::HarryPotter.location }
    url_logo { 'https://i.ibb.co/60HvbSm/hogwarts.jpg' }
  end
end
