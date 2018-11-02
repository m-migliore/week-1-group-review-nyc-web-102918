# How would you get the url for Bulbasaur's ability?
require "pry"
pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]

def find_ability_url(pokemon, pokemon_name)
  ability_url = nil
  pokemon.each do |pokemon_data|
    if pokemon_data[:name] == pokemon_name
      ability_url = pokemon_data[:abilities][0][:ability][:url]
    end
  end
  ability_url
end

find_ability_url(pokemon, "bulbasaur")

def first_with_exp_over(pokemon, exp)
  pokemon.find do |pokemon_data|
    if pokemon_data[:base_experience] > exp
      return pokemon_data[:name]
    end
  end
end

 first_with_exp_over(pokemon, 40)


 def all_with_exp_over(pokemon, exp)
   all_with_exp = []
   pokemon.each do |pokemon_data|
     if pokemon_data[:base_experience] > exp
       all_with_exp << pokemon_data[:name]
     end
   end

   all_with_exp
 end

  all_with_exp_over(pokemon, 40)


# How would you return the first pokemon with base experience over 40?

def all_names(pokemon)
  pokemon.map do |pokemon_data|
    pokemon_data[:name]
  end
end

all_names(pokemon)


def weight_above?(pokemon, weight)
  pokemon.find do |pokemon_data|
    if pokemon_data[:weight] > weight
      return true
    end

    return false 
  end
end

weight_above?(pokemon, 60)

 binding.pry

puts "end"
