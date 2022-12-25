class QueryPokemons
  def initialize
    @service = PokemonService.new(repository: PokemonRepository.new)
  end

  def call(limit = 20)
    @service.find(limit)
  end
end
