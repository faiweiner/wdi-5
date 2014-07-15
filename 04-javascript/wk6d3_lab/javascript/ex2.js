var pageNode = document.getElementsByTagName('body')[0];
pageNode.style.backgroundColor = 'pink';

var books = [
  {title: 'The Design of EveryDay Things',
    author: 'Don Norman',
    alreadyRead: false,
    cover: 'http://3.bp.blogspot.com/-ij_YBKzs7xI/UfLrlo3uE4I/AAAAAAAAAao/s5awjH4ah68/s1600/Cover+DOET2+Cover+May+25,+2013.jpg'
  },
  {title: 'The Most Human Human',
    author: 'Brian Christian',
    alreadyRead: true,
    cover: 'http://3.bp.blogspot.com/-tYSD8dXEJV8/T1ZcO6vxnTI/AAAAAAAAAME/Xognk7KP4Zg/s1600/MostHuman.jpg' 
  }];

for ( i = 0; i < books.length; i++ ) {
  var newBook = books[i];
  var bookArea = document.createElement('ul');
  bookArea.className = 'book-display';
  pageNode.appendChild(bookArea);
  var bookTitle = document.createElement('li');
  bookTitle.innerHTML = books[i].title;
  bookArea.appendChild(bookTitle);
  var bookAuthor = document.createElement('p');
  bookAuthor.innerHTML = "Author: "
  bookAuthor.innerHTML += books[i].author;
  bookArea.appendChild(bookAuthor);
  var bookRead = document.createElement('p');
  bookRead.innerHTML = "Has read: ";
  bookRead.innerHTML += books[i].alreadyRead;
  bookArea.appendChild(bookRead);
  var bookCover = document.createElement('img');
  bookCover.src =  books[i].cover;
  bookCover.style.background = 'black';
  bookCover.style.maxWidth = '100px';
  bookArea.appendChild(bookCover);
  if (books[i].alreadyRead === true) {
    bookTitle.style.color = 'green';
  } else {
    bookTitle.style.color = 'red';   
  };
};

console.log(books);

 // URL of the book cover, and add an img element for each book on the page.