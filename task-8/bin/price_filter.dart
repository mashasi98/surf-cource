import 'filter.dart';
import 'product.dart';
import 'utils.dart';

class Price_filter implements Filter<double> {
  double _reduce_price;

  Price_filter(this._reduce_price);

  @override
  bool apply(item_price) {
    return item_price <= _reduce_price;
  }

  static less_then_or_equals_reduce(
      List<Product> items, Filter<double> filter) {
    items
        .where((item) => filter.apply(item.price))
        .forEach((item) => print(item.toString()));
    print('__________________');
  }
}
