// THE READING LIST

var books = [
  { title: "The Hobbit",
    author: "J.R.R. Tolkien",
    alreadyRead: false
  },
  { title: "The Lord of the Rings",
    author: "J.R.R. Tolkien",
    alreadyRead: true
  },
  { title: "The Return of the King",
    author: "J.R.R. Tolkien",
    alreadyRead: true
  }
];

for (var i = 0; i < books.length; i++) {
  if ( books[i].alreadyRead === true ) {
    console.log("You have read \"" + books[i].title + "\" by " + books[i].author);
  };
  if ( books[i].alreadyRead === false ) {
    console.log("You still need to read \"" + books[i].title + "\" by " + books[i].author);
  };
};

console.log(books.length)