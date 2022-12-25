class PokemonRepository
  def find(limit)
    Pokemon.limit(limit)
  end
end
