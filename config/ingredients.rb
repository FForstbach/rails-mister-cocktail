class Ingredients

  url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
  list_serialized = open(url).read
  list_of_ingredients = JSON.parse(list_serialized)
  @ingredients = list_of_ingredients["drinks"]

  @ingredients.each do |ingredient|
    INGREDIENTS = []
    INGREDIENTS << ingredient["strIngredient1"]
  end
end
