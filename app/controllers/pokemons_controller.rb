class PokemonsController < ActionController::API
  def index
    render json: QueryPokemons.new.call(params[:limit])
  end
end
