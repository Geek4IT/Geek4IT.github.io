function getBooks() {
  var books = [];
  var nl = document.querySelectorAll('figure.abook');
  var len = nl.length;
  for (var i = 0; i < len; i++) {
    books[i] = nl[i];
  }
  return books;
}

function by(propName) {
  return function(obj1, obj2) {
    var v1 = obj1.getAttribute('data-' + propName);
    var v2 = obj2.getAttribute('data-' + propName);
    if (propName === 'rating') {
      v1 = parseInt(v1);
      v2 = parseInt(v2);
    }
    if (v1 > v2) { return -1; }
    else if (v1 < v2) { return 1; }
    else { return 0; }
  }
}

function showBooks(books) {
  var len = books.length
    , content = document.getElementById('allbooks');
  content.innerHTML = '';
  for(var i = 0; i < len; i++) {
    content.appendChild(books[i]);
  }
}

function sortBooks(event) {
  var target = event.target || window.event.srcElement;
  var matches = /^sort-(rating|title|date)$/.exec(target.id);
  if(matches) {
    var books = getBooks();
    books.sort(by(matches[1]));
    showBooks(books);
  }
}

var sorters = document.getElementById('sorters');
if(sorters.addEventListener) {
  sorters.addEventListener('click', sortBooks, false);
} else {
  sorters.attachEvent('onclick', sortBooks);
}

