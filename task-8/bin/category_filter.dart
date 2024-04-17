import 'filter.dart';
import 'product.dart';

class Category_filter implements Filter<String> {
  String _required_category;

  Category_filter(this._required_category);

  @override
  bool apply(category) {
    return category == _required_category;
  }

  static applyFilter(List<Product> items, Filter<String> filter) {
    for (var item in items) {
      if (filter.apply(item.category)) {
        print(item.toString());
      }
    }
    print('__________________');
  }
}
