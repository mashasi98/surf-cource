import 'filter.dart';
import 'product.dart';

class Categoryfilter implements Filter<String> {
  String _requiredCategory;

  Categoryfilter(this._requiredCategory);

  @override
  bool apply(category) {
    return category == _requiredCategory;
  }

  static void applyFilter(List<Product> items, Filter<String> filter) {
    items
        .where((element) => filter.apply(element.category))
        .forEach((element) => print(element.toString()));
    print('__________________');
  }
}
