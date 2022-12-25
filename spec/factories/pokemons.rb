FactoryBot.define do
  factory :fake_pokemon, class: Pokemon do
    name { "Pikachu" }
    price_cents { 1 }
    stats { { atk: 2, def: 4 } }
    pokemon_types { ["electricity"] }
  end
end
