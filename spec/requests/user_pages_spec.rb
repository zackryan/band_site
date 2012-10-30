require 'spec_helper'

describe "User pages" do
  subject {page}

  describe "profile page" do
  	let(:user) {FactoryGirl.create(:user)}
    
    before {visit user_path(user)}

    it {should have_selector('h1',    text: user.name)}
    it {should have_selector('title', text: user.name)}
  end

  describe "signup" do

  	let(:submit) {"Create my account"}

  	before {visit signup_path}

  	describe "with invalid information" do
  		it "should not create a user" do
  			expect {click_button submit}.not_to change(User, :count)
  		end
  	end
  	
  	describe "with valid information" do

  		before do
  			fill_in "Name",         with: "Zack Ryan"
  			fill_in "Email",        with: "zackryan23@gmail.com"
  			fill_in "Password",     with: "lilone1023"
  			fill_in "Confirmation", with: "lilone1023"
  		end

  		it "should creat a user" do
  			expect {click_button submit}.to change(User, :count).by(1)
  		end

  		describe "after saving a user" do
			before {click_button submit}

  			let(:user) {User.find_by_email("zackryan23@gmail.com")}

  			it {should have_selector('title', text: user.name)}
  		end
  	end
  end
end
