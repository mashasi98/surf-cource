import 'filter.dart';
import 'product.dart';

class PriceFilter implements Filter<double> {
  double _reducePrice;

  PriceFilter(this._reducePrice);

  @override
  bool apply(itemPrice) {
    return itemPrice <= _reducePrice;
  }

  static lessThenOrEqualsReduce(List<Product> items, Filter<double> filter) {
    items
        .where((item) => filter.apply(item.price))
        .forEach((item) => print(item.toString()));
    print('__________________');
  }
}
