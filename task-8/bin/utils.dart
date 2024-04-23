import 'product.dart';

class Utils {
  List<Product> stringToList(String someString) {
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
    return items;
  }
}
