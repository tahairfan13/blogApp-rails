require 'rails_helper'

RSpec.describe Category, type: :model do

	it "Is named Jave" do
		category = FactoryGirl.build(:category ,:Java) #:java is used to show the property trait see in factories/category
		expect(category.title).to eq('JAVA')
	end	


end
