var triangle = function(side1, side2, side3) {
  var array = [ side1, side2, side3 ]
  // var base = Math.max.apply(Math, array);
  if ( side1 + side2 > side3 && ( side1 + side3 > side2 && side2 + side3 > side1 )) {
    console.log("This is a valid triangle with " + side1 + ", " + side2 + ", and " + side3 + " as sides.")
    var s = ( side1 + side2 + side3 ) / 2;
    var area = Math.sqrt(s*(s - side1)*(s - side2)*(s - side3));
    console.log("The area is " + area);
  } else {
    console.log("Invalid Triangle")
  }
};

triangle(2, 8, 7)