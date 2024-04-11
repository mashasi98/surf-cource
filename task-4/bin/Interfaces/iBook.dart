import '../mixint/readable.dart';

abstract class IBook with Readable {
  final String title;
  final String author;
  final int? publishDate;
  final int pageCount;

  IBook.withoutPublishDate(this.title, this.author, this.pageCount)
      : publishDate = null;

  IBook(this.title, this.author, this.publishDate, this.pageCount);

  void aboutBook() {
    print('\n Название - $title,\n'
        'Автор - $author,\n'
        'Количество страниц - $pageCount, \n'
        'Дата выпуска - ${publishDate ?? "нет информации"}');
  }
}
