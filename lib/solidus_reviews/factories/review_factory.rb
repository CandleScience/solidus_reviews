# frozen_string_literal: true

FactoryBot.define do
  factory :review, class: Spree::Review do |_f|
    sequence(:name) { |i| "User #{i}" }
    review { 'This product is ok!' }
    rating { rand(1..5) }
    approved { false }
    show_identifier { true }
    user
    product

    trait :approved do
      approved { true }
    end

    trait :hide_identifier do
      show_identifier { false }
    end
  end
end
