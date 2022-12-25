Rails.application.routes.draw do
  scope '/api' do
    resources :pokemons, only: %[index]
  end
end
