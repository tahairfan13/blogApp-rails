require 'rails_helper'

RSpec.describe User, type: :model do
	# Rspec USING 'Factory Girl'


	#describe 'test' do
	# before do # is used for repetative tasks
	# 	@user = User.new(
 #  		name: 'taha',
 #  		username: 'tahairfan13',
 #  		password: 'password' 
 #  		)
	# end	

  	it "has a valid factory" do # if we put x with 'it'it will be considered as pending
	 user = FactoryGirl.create(:user)
	# puts "This user's post is #{user.inspect}" 
	end

  	it "is valid with name, username, password" do
  	expect(FactoryGirl.build(:user)).to be_valid
  	end

	it "name must not be nil " do

	user = FactoryGirl.build(:user, name: nil)

	user.valid?
	expect(user.errors[:name]).to include("can't be blank")
	end	


	it "username must be unique" do
		FactoryGirl.create(:user, username: "tahairfan13")


		user2 = FactoryGirl.build(:user, username:"tahairfan13")

		user2.valid?

		expect(user2.errors[:username]).to include("has already been taken") #remember the statement inside include is same what rails gives us
	end	

end
