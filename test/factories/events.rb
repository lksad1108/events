FactoryBot.define do
  factory :event do
    owner_id { "" }
    name { "MyString" }
    place { "MyString" }
    start_at { "2020-09-03 15:45:13" }
    end_at { "2020-09-03 15:45:13" }
    content { "MyText" }
  end
end
