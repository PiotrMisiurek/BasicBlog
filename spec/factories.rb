FactoryBot.define do
  factory :comment do
    username "Username"
    content "Content"
    post
  end

  factory :post do
    title 'Title'
    content "Content"
  end
end