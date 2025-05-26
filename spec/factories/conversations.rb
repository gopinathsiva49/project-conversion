FactoryBot.define do
  factory :conversation do
    project { nil }
    user { nil }
    type { "" }
    message { "MyText" }
  end
end
