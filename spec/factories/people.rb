# == Schema Information
#
# Table name: people
#
#  id              :bigint           not null, primary key
#  name            :string
#  lastname        :string
#  genre_id        :bigint           not null
#  real_photo      :text
#  cartoon_photo   :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  ocupation       :string
#  wand            :string
#  patronus        :string
#  school_house_id :bigint
#
FactoryBot.define do
  factory :person do
    name { Faker::Movies::HarryPotter.character } 
    lastname { Faker::Movies::HarryPotter.character }
    genre
    real_photo { Faker::Movies::HarryPotter.book }
    cartoon_photo { Faker::Movies::HarryPotter.book }
  end
end
