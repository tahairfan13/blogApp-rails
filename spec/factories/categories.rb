FactoryGirl.define do
  factory :category do
    title 'Rails'
  end

trait :Java do  #just to show the feature of trait 
title "JAVA"
end

trait :Ruby do
title "Ruby"
end



end
