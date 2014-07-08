// World Translator
var greaterNum = function(num1, num2) {
  if (num1 > num2) {
    var larger = num1;
  } else {
    var larger = num2;
  }; 
  var statement = "The greater number of " + num1 + " and " + num2 + " is " + larger + ".";
  console.log(statement); 
};

greaterNum(2,4);
greaterNum(6,4);

// World Translator
var helloWorld = function(language) {
  if (language === "es") {
    console.log("¡Hola, Mundo");
  } else if (language === "de") {
    console.log("Hallo Welt");
  } else if (language === "th") {
    console.log("สวัสดีชาวโลก");
  } else {
    var statement = "Hello World"
    console.log("Hello World");
  };
};

helloWorld("es");

var helloWorld2 = function(language) {
  if (language === "es") {
    var lang = "¡Hola, Mundo";
    return lang;
  } else if (language === "de") {
    var lang = "Hallo Welt";
    return lang;
  } else if (language === "th") {
    var lang = "สวัสดีชาวโลก";
    return lang
  } else {
    var lang = "Hello World"
    return lang
  };
  console.log(lang);
};

helloWorld2("th");

// Grde Assigner
var assignGrade = function(score) {
  if (score > 50 && score < 59 ) {
    console.log("F");
  } else if (score > 60 && score < 69 ) {
    console.log("D");
  } else if (score > 70 && score < 79 ) {
    console.log("C");
  } else if (score > 80 && score < 89 ) {
    console.log("B");
  } else if (score > 90 && score < 99 ) {
    console.log("A");
  };
};

assignGrade(91);

// Pluralizer

var pluralize = function(noun, number) {
  if (number > 1) {
    console.log(number + "noun" + "s");
  };
};

pluralize(5, "cat");
