var pageNode = document.getElementsByTagName('body')[0];
pageNode.style.fontFamily = 'Arial';
var newSpan1 = document.getElementById('nickname');
var newSpan2 = document.getElementById('favorites');
var newSpan3 = document.getElementById('hometown');
newSpan1.innerHTML = 'Faiball';
newSpan2.innerHTML = 'Steak and good wine';
newSpan3.innerHTML = 'Camarillo, CA';

var listItems = document.getElementsByTagName('li');
for (var i = 0; i < listItems.length; i++) {
  var listItem = listItems[i];
  listItem.className = 'listitem';
  listItem.style.color = 'red';
};

var newImg = document.createElement('img');
newImg.src = 'http://c368335.r35.cf1.rackcdn.com/86087-s-1388045926.jpg';
pageNode.appendChild(newImg);
newImg.style.border = '3px solid black';
newImg.style.borderRadius = '100%';

