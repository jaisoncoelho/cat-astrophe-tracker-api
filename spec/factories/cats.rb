FactoryBot.define do
  factory :cat do
    name { "Fluffy" }
    picture { "https://catpics.com/fluffy.jpg" }
    personality { "Lazy but friendly" }

    trait :whiskers do
      name { "Whiskers" }
      picture { "https://catpics.com/whiskers.jpg" }
      personality { "Adventurous and curious" }
    end

    trait :mittens do
      name { "Mittens" }
      picture { "https://catpics.com/mittens.jpg" }
      personality { "Independent but loves attention" }
    end
  end
end
