# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PokemonService do
  describe 'find' do
    let!(:pokemons) { FactoryBot.create_list(:fake_pokemon, 20) }
    let!(:repository) { PokemonRepository.new }

    it 'returns 20 pokemons' do
      pokemons = described_class.new(repository: repository).find(20)

      expect(pokemons.length).to eq(20)
    end
  end
end
