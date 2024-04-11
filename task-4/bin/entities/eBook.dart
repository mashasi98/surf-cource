import '../Interfaces/Ibook.dart' show IBook;

class EBook extends IBook {
  final String format;

  EBook(super.title, super.author, super.publishDate, super.pageCount,
      this.format);

  @override
  void aboutBook() {
    super.aboutBook();
    print('формат книги -$format');
  }

  void carry() {
    print('я ношу c собой электронную $title');
  }

  @override
  void readBook() {
    print("Читаю электронную книгу $title ");
  }
}
