// FOR Loops

// for (var i = 0; i < 5; i = i + 1) {
//   console.log(i);
// }

// The even/odd reporter

for (var i = 0; i <= 20; i = i + 1) {
  if (i % 2 == 0) {
    console.log(i + " is even.");
  } else {
    console.log(i + " is odd.");
  };
};

// Multiplication Tables
for (var i = 0; i <= 10; i = i++) { 
  console.log(i + " * 9 = " + (i * 9))
};

// The Grade Assigner

while (assignGrade; ) {
  var assignGrade = function(score) {
    if (score > 50 && score < 59 ) {
      var grade = "F";
    } else if (score > 60 && score < 69 ) {
      var grade = "D";
    } else if (score > 70 && score < 79 ) {
      var grade = "C";
    } else if (score > 80 && score < 89 ) {
      var grade = "B";
    } else if (score > 90 && score < 99 ) {
      var grade = "A";
    };
  };
  break; 
  console.log("For " + score + " you get a " + grade + ".");
};