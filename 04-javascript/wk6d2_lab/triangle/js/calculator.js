var regularOperators = ["addition", "subtraction", "multiplication", "division"];
var operator = window.prompt("What would you like to do?", regularOperators );

var getNumber = function(message) {
  var n = prompt(message);
  return parseInt(n);
}

if (operator === "addition") {
  var operatorSign = "+";
  var y = getNumber('Enter your first number');
  var z = getNumber('Enter your second number');
  var answer = y + z;
} else if (operator === "subtraction") {
  var operatorSign = "-";
  var y = getNumber('Enter your first number');
  var z = getNumber('Enter your second number');
  var answer = y - z;
} else if (operator === "multiplication") {
  var operatorSign = "*";
  var y = getNumber('Enter your first number');
  var z = getNumber('Enter your second number');
  var answer = y * z;
} else if (operator === "division") {
  var operatorSign = "/";
  var y = getNumber('Enter your first number');
  var z = getNumber('Enter your second number');
  var answer = y / z;
} else if (operator === "sq") {
  var x = getNumber('Enter a number');
  var answer = Math.sqrt(x);
} else {
  window.alert("Invalid operator!");
};

window.alert(y + " " + operatorSign + " " + z + " = " + answer);
