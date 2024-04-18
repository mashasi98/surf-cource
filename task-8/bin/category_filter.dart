// ignore_for_file: non_constant_identifier_names

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
    items
        .where((element) => filter.apply(element.category))
        .forEach((element) => print(element.toString()));
    print('__________________');
  }
}
