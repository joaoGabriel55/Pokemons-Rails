ActiveRecord::Schema[7.0].define(version: 2022_12_20_113059) do
  enable_extension "plpgsql"

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.integer "price_cents"
    t.json "stats"
    t.text "pokemon_types", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
