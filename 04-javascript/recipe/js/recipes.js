// RECIPES

var recipe = {
  title: "Mole",
  servings: 2,
  ingredients: [ "cumin", "cinnamon", "cocoa" ]
};

console.log(recipe.title);
console.log("Serves: " + recipe.servings);
for ( var i = 0; i < recipe.ingredients.length; i++ ) {
  console.log(recipe.ingredients[i]);
};
