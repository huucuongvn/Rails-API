FactoryBot.define do
  sequence :slug do |n|
    "slug#{n}@example.com"
  end

  factory :article do
    title { "MyString" }
    content { "MyText" }
    slug { generate :slug }
  end
end
