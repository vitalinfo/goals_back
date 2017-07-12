FactoryGirl.define do
  factory :goal do
    title { Faker::Lorem.word }
    user
    score { rand(10) }
  end
end
