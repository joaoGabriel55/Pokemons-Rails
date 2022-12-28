# frozen_string_literal: true

class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :price_cents
      t.json :stats
      t.text :pokemon_types, array: true, default: []

      t.timestamps
    end
  end
end
