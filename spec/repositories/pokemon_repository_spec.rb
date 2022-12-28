# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PokemonRepository do
  describe 'find' do
    let!(:pokemons) { FactoryBot.create_list(:fake_pokemon, 20) }

    it 'returns first 10 pokemons' do
      pokemons = described_class.new.find(10)

      expect(pokemons.length).to eq(10)
    end
  end
end
