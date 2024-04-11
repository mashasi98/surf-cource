import 'paperBook.dart';

class Bookcase {
  final String _material;
  final int _width;
  final int _height;
  final String? _manufacturer;
  final List<PaperBook> books;
  static const bool isItPaperBook = true;

  Bookcase(this._material, this._width, this._height, {List<PaperBook>? books})
      : books = books ?? [],
        _manufacturer = null;

  Bookcase.withManufacturer(
      this._material, this._width, this._height, this._manufacturer,
      {List<PaperBook>? books})
      : books = books ?? [];

  String info() {
    var info = '\n Характеристики шкафа :\n'
        'Материал: $_material, \n '
        'Параметры шкафа : $_width см на  $_height см,\n '
        'Производитель: ${_manufacturer ?? "нет информации"} \n';

    return books.isEmpty
        ? info + '\n книжный шкаф пуст'
        : '$info\n в шкафу стоят книги: ${books.map((book) => book.title)}\n';
  }

  void addBooksToBookcase(dynamic booksToAdd) {
    (booksToAdd is PaperBook)
        ? {books.add(booksToAdd)}
        : (booksToAdd is List<PaperBook>)
            ? books.addAll(booksToAdd)
            : print('\n Такое в шкаф не поставишь');
  }
}
