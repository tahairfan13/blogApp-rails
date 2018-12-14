require'rails_helper'

RSpec.feature "Users",type: :feature do

	scenario "user gets created" do
	user = FactoryGirl.build(:user)

	visit signup_path

	expect {

	fill_in "Name", with: user.name
    fill_in "Username", with: user.username
    fill_in "Password", with: user.password
    fill_in "Confirm Password", with: user.password

    click_button "Create User"


    expect(page).to have_content "#{user.name.capitalize}'s profile"
	}.to change(User.all, :count).by(1)

	end	

# aggregate_failures do
#     expect(response).to be_success
# expect(response).to have_http_status "200" end


	
end	