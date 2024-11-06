abstract class LibraryOperations {
  void addBook(Book book);
  void deleteBook(String title);
  Book? searchBook(String title);
}

class Book {
  String titles;
  String author;

  Book(this.titles, this.author);

  String get title => titles;

  set title(String title) => titles = title;

  String get authors => author;

  set authors(String author) => author = author;
}

class Library implements LibraryOperations {
  List<Book> books = [];

  @override
  void addBook(Book book) {
    books.add(book);
    print('Book added: ${book.title}');
  }

  @override
  void deleteBook(String title) {
    books.removeWhere((book) => book.title == title);
    print('Book deleted: $title');
  }

  @override
  Book? searchBook(String title) {
    for (var book in books) {
      if (book.title == title) {
        print('Book found: ${book.title} by ${book.author}');
        return book;
      }
    }
    print('Book not found: $title');
    return null;
  }
}

void main() {
  var library = Library();

  var book1 = Book('How You Fell', ' Jestent Mocn ');
  var book2 = Book('To Kill a Mockingbird', 'Fattr Spastn');

  library.addBook(book1);
  library.addBook(book2);

  library.searchBook('How You Fell');
  library.deleteBook('How You Fell');
  library.searchBook('How You Fell');
}
