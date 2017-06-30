FactoryGirl.define do
  sequence :email do |n|
    "user#{n}@example.com"
  end

  factory :user do
    name "test"
    email
    password "password"
  end

  factory :post do
    user
    message "Lorem Ipsum"
  end

  factory :comment do
    post
    user
    text "Lorem Ipsum"
  end

end
