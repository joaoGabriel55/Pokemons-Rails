# frozen_string_literal: true

class PokemonService
  def initialize(repository:)
    @repository = repository
  end

  def find(limit)
    @repository.find(limit)
  end
end
