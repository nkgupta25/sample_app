# FactoryGirl.define do
#   factory :user do
#     name     "Neal Gupta"
#     email    "nealgupta@hotmail.com"
#     password "foobar"
#     password_confirmation "foobar"
#   end
# end

#define a Factory Girl sequence
FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}   
    password "foobar"
    password_confirmation "foobar"

    # adding a factory for admin users
    factory :admin do
      admin true
    end
  end

  # Make a micropost factory
  factory :micropost do
    content "Lorem ipsum"
    user
  end
end