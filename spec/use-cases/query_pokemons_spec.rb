# frozen_string_literal: true

require 'rails_helper'

RSpec.describe QueryPokemons do
  describe 'find' do
    let!(:pokemons) { FactoryBot.create_list(:fake_pokemon, 20) }

    it 'returns default 20 pokemons' do
      pokemons = described_class.new.call

      expect(pokemons.length).to eq(20)
    end
  end
end
