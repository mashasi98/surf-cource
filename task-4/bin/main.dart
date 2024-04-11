import 'entities/EBook.dart';
import 'entities/bookcase.dart';
import 'entities/paperBook.dart';
import 'enums/condition.dart';

void main() {
  var woodBookcase = Bookcase('wood', 80, 200, 'IKEA', books: []);
  var metalBookcase = Bookcase('metal', 60, 180, 'Metalworks Ltd.', books: []);

  var mockingBook = PaperBook(
      'To Kill a Mockingbird', 'Harper Lee', 1960, 281, Condition.good);

  var book1984 =
      PaperBook('1984', 'George Orwell', 1949, 328, Condition.excellent);

  var bookGatsby = PaperBook(
      'The Great Gatsby', 'F. Scott Fitzgerald', 1925, 180, Condition.normal);
  bookGatsby.readBook();
  bookGatsby.aboutBook();

  woodBookcase.addBooksToBookcase([mockingBook, book1984]);
  print(woodBookcase.info());
  print(metalBookcase.info());

  var ebook =
      EBook('The Catcher in the Rye', 'J.D. Salinger', 1951, 224, 'PDF');

  ebook.readBook();
  ebook.aboutBook();
  woodBookcase.addBooksToBookcase(ebook);
}
