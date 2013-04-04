require 'faker'

FactoryGirl.define do
  factory :event do |f|
    f.title { Faker::Company.catch_phrase }
    f.location { Faker::Address.street_address }
  end
end