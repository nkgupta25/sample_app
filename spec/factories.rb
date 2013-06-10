FactoryGirl.define do
  factory :user do
    name     "Neal Gupta"
    email    "nealgupta@hotmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end