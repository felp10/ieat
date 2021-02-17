FactoryBot.define do
    factory :produtc do
        name {Faker::Games::Pokemon.move}
        value{rand(100)}
        restaurant
    end
end