FactoryGirl.define do
	factory :user do
		name 'tahaali'
  		sequence(:username) { |n| "tahairfan13 #{n}" } # this is used to generate a unique username 
  		password 'password' 
	end	
end