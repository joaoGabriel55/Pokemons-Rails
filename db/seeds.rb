if Pokemon.count == 0
  path = File.join(File.dirname(__FILE__), "./pokemons.json")
  records = JSON.parse(File.read(path))

  records.each do |record|
    Pokemon.create!(
      id: record["id"],
      name: record["name"],
      price_cents: record["price"].present? ? record["price"] * 100 : 0,
      stats: record["stats"],
      pokemon_types: record["pokemon_types"],
    )
  end

  puts "#{Pokemon.count} Pokemons are seeded"
end
