require "rails_helper"

RSpec.describe PokemonRepository do
  describe "find" do
    let!(:pokemons) { FactoryBot.create_list(:fake_pokemon, 20) }

    it "returns first 10 pokemons" do
      pokemons = PokemonRepository.new.find(10)

      expect(pokemons.length).to eq(10)
    end
  end
end
