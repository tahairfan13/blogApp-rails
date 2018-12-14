require 'rails_helper'

RSpec.describe Post, type: :model do
 
	it "is valid" do
	expect(FactoryGirl.create(:post)).to be_valid
	end	


end
