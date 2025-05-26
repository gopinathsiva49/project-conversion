FactoryBot.define do
  factory :conversation do
    project { nil }
    user { nil }
    entry_type { "" }
    message { "MyText" }
  end
end
