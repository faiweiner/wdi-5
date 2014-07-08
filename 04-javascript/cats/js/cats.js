var catFactory = function(age, furColor) {
  var cat = {
    age: age,
    furColor: furColor,
    meow: function() {
      console.log('meowww');
    },
    eat: function(food) {
      console.log('Yum, I love ' + food);
    },
    sleep: function(numMinutes) {
      for (var i = 0; i < numMinutes; i++) {
        console.log('z');
      }
    },
    destroyFurniture: function() {
      console.log('Muahahaha');
      return 777;
    }
  };

  return cat;
};

var syntaxTheCat = catFactory(25, "black and white tuxedo"); 
syntaxTheCat.religion = "Satanic";
var lizzieTheCat = catFactory(18, "grey");