# frozen_string_literal: true

class PokemonRepository
  def find(limit)
    Pokemon.limit(limit)
  end
end
