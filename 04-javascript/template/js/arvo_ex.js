// Fortune Teller
var tellFortune = function(numChildren, partnerName, geoLocation, jobTitle) {
  var fortuneTeller = "You will be a " + jobTitle + " in " + geoLocation + ", and married to " + partnerName + " with " + numChildren + " kids."; 
  console.log(fortuneTeller);
};

tellFortune(27, "Eli", "Sydney", "EVP");
tellFortune(30, "Alex", "Bangkok", "EVP");
tellFortune(20, "Roger", "San Francisco", "EVP");

// Age Calculator
var currentTime = new Date();
var year = currentTime.getFullYear();

var calculateSupply = function(currentYear, birthYear) {
  var age = currentYear - birthYear;
  var age2 = age - 1;
  var ageCalculator = "They are either " + age2 + " or " + age + ".";
  console.log(ageCalculator)
};

calculateSupply(year, 1992);
calculateSupply(year, 1800);
calculateSupply(year, 1985);

// Lifetime Supply
function toInteger(number){ 
  return Math.round(  // round to nearest integer
    Number(number)    // type cast your input
  ); 
};

var calculateSupply = function(currentAge, perDay) {
  var maximumAge = 100;
  var lifeTimeSupply = perDay * 365.25 * (maximumAge - currentAge);
  var lifeTimeStatement = "You will need " + lifeTimeSupply + " beers to last you until the ripe old age of " + maximumAge + ".";
  console.log(lifeTimeStatement);
};

calculateSupply(20, toInteger(5.77));
calculateSupply(27, toInteger(4.3));

// Geometrizer

var calcCircumfrence = function(radius, circumference) {
  var circumferenceStatement = "The circumference is " + radius * circumference + ".";
  console.log(circumferenceStatement);
}

var calcArea = function(radius) {
  var area = Math.PI * radius * radius
  var areaStatement = "The area is " + area + ".";
  console.log(areaStatement);
};

calcCircumfrence(2, 5);
calcCircumfrence(20, 7);

calcArea(5);
calcArea(10);


// The Temperature Converter

var celsiusToFahrenheit = function(celsius) {
  var fahrenheit = celsius * ( 9 / 5 ) + 32;
  var tempStatement = celsius + "°C is " + fahrenheit + "°F.";
  console.log(tempStatement);
};

var fahrenheitToCelcius = function(fahrenheit) {
  var celsius = ( fahrenheit -  32)  *  ( 5 / 9 );
  var tempStatement = fahrenheit + "°F is " + celsius + "°C.";
  console.log(tempStatement);
};

celsiusToFahrenheit(0);
fahrenheitToCelcius(70);


