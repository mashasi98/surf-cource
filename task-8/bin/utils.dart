import 'filter.dart';
import 'product.dart';

class Utils {
  List<Product> string_to_list(String someString) {
    List<String> data = someString.replaceAll('\n', ',').split(',');
    List<Product> items = [];
    for (int i = 0; i < data.length; i += 5) {
      items.add(Product(
          int.parse(data[i].trim()),
          data[i + 1].trim(),
          data[i + 2].trim(),
          int.parse(data[i + 3].trim()).toDouble(),
          int.parse(data[i + 4].trim()).toInt()));
    }
    //Вопрос :
    // как можно элегантнее реализовать этот метод?
    // не нравиться грамоздкость ифа,но другой маппинг строки в объект не смогла придкмать .
    return items;
  }
}
