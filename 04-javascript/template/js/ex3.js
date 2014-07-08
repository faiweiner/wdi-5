//The Lifetime Supply Calculator

var currentAge = 28;
var maximumAge = 100;
var perDay = 3;
var lifeTimeSupply = perDay * 365.25 * (maximumAge - currentAge);

var lifeTimeStatement = "You will need " + lifeTimeSupply + " to last you until the ripe old age of " + maximumAge + ".";

console.log(lifeTimeStatement)