import '../Interfaces/Ibook.dart';
import '../enums/condition.dart';

class PaperBook extends IBook {
  final Condition condition;

  PaperBook(super.title, super.author, super.publishDate, super.pageCount,
      this.condition);

  @override
  void aboutBook() {
    super.aboutBook();
    print('Cостояние книги -${condition.value}');
  }

  @override
  void carry() {
    print('я ношу c собой книгу $title');
  }

  @override
  void readBook() {
    print("Читаю обычную  книгу $title ");
  }
}
