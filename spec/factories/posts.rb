FactoryGirl.define do
  factory :post do
    association :user
    association :category
    title 'ali baba'
    description 'is a thief who steele things'
  end
end
