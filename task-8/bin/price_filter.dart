import 'filter.dart';
import 'product.dart';

class Price_filter implements Filter<double> {
  double _reduce_price;

  Price_filter(this._reduce_price);

  @override
  bool apply(item_price) {
    return item_price <= _reduce_price;
  }

  static less_then_or_equals_reduce(
      List<Product> items, Filter<double> filter) {
    for (var item in items) {
      if (filter.apply(item.price)) {
        print(item.toString());
      }
    }
    print('__________________');
  }
}
