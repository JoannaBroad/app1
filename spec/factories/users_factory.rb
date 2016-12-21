FactoryGirl.define do

  sequence(:email) { |n| "user#{n}@example.com" }

  factory :user do
    email
    password "testuser"
    first_name "Jane"
    last_name "smith"
    admin false
  end
  factory :admin, class: User do
  email
  password "qwertyuiop"
  admin true
  first_name "Admin"
  last_name "User"
end

end
