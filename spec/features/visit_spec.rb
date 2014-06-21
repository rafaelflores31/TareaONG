require 'rails_helper'

describe "visit page" do

	before(:each) do
		FactoryGirl.create(:nursery, name: "Guard1")
	end

	it "visitar show success" do
		visit nurseries_index_path
		within(".content") do
			expect(page).to have_content "Guard1"
        end

	end

end