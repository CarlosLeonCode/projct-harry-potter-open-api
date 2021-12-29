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
FactoryBot.define do
  factory :school do
    name { Faker::Movies::HarryPotter.location }
    url_logo { 'https://i.ibb.co/60HvbSm/hogwarts.jpg' }
  end
end
