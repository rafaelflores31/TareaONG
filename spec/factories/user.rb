FactoryGirl.define do
	sequence :email do |n|
    "unitec#{n}@ong.com"
  end

	factory :user do
		full_name "UsuarioTest"
		email 
		password "1"
		password_confirmation "1"
		nursery_id 1
    end
end