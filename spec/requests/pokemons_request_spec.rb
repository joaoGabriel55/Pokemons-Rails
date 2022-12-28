# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PokemonsController do
  describe 'GET index' do
    let!(:players) { FactoryBot.create_list(:fake_pokemon, 20) }

    before { get '/api/pokemons' }

    it 'returns all players' do
      expect(JSON.parse(response.body).size).to eq(20)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end
end
