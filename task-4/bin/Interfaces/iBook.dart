import '../mixint/readable.dart';

abstract class IBook with Readable {
  final String title;
  final String author;
  final int publishDate;
  final int pageCount;

  IBook(this.title, this.author, this.publishDate, this.pageCount);

  void aboutBook() {
    print('Название - $title,\n'
        'Автор - $author,\n'
        'Дата выпуска - $publishDate');
  }
}
