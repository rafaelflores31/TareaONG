require 'rails_helper'

describe "add page" do
  
	it "add success" do
	    visit new_nurseries_path
		fill_in "nur_name", with: "TestG"
		click_button "Ingresar Guarderia"
		expect(current_path).to eq(nurseries_index_path)
	end



	it "add fail" do
		visit new_nurseries_path
		click_button "Ingresar Guarderia"
		expect(current_path).to eq(new_nurseries_path)
	end	
	 

end