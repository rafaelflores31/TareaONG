FactoryGirl.define do
	sequence :name do |n|
    "Guarderia#{n}"
     end

	factory :nursery do
		name
		country "Honduras"
		address "Algun Lugar"
		purpose "Test"
	end
	
end