import 'entities/EBook.dart';
import 'entities/bookcase.dart';
import 'entities/paperBook.dart';
import 'enums/condition.dart';

void main() {
  var woodBookcase = Bookcase('wood', 80, 200, books: []);
  var metalBookcase =
      Bookcase.withManufacturer('metal', 60, 180, books: [], 'Metalworks Ltd.');

  var warBook =
      PaperBook('Война и мир', 'Лев Толстой', 1869, 1225, Condition.good);
  var masterBook = PaperBook(
      'Мастер и Маргарита', 'Михаил Булгаков', 1967, 480, Condition.normal);

  var book1984 =
      PaperBook('1984', 'George Orwell', 1949, 328, Condition.excellent);

  var bookGatsby = PaperBook(
      'The Great Gatsby', 'F. Scott Fitzgerald', 1925, 180, Condition.normal);
  bookGatsby.readBook();
  bookGatsby.aboutBook();

  woodBookcase.addBooksToBookcase([warBook, book1984, masterBook]);
  print(woodBookcase.info());
  print(metalBookcase.info());

  var ebook =
      EBook('The Catcher in the Rye', 'J.D. Salinger', 1951, 224, 'PDF');

  ebook.readBook();
  ebook.aboutBook();
  woodBookcase.addBooksToBookcase(ebook);

  var pushkinEbook = EBook.withoutPublishDate(
      'Москва', 'Александр Сергеевич Пушкин', 30, 'FB2');
  pushkinEbook.aboutBook();
}
