require 'rails_helper'

describe "login page" do

	before(:each) do
		FactoryGirl.create(:user, email: "1@1.com", password: "1")
	end

	it "login success" do
		visit login_path
		fill_in "email", with: "1@1.com"
		fill_in "password", with: "1"
		click_button "Login"
		expect(current_path).to eq(nurseries_index_path)
		expect(page).to have_content("Agregar guarderia")
		

	end

	it "login fail" do
		visit login_path
		fill_in "email", with: "failure@aa.com"
		click_button "Login"
		expect(current_path).to eq(login_path)
	end
end