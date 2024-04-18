import 'filter.dart';
import 'product.dart';

class Remaining_filter implements Filter<int> {
  int _reduce_amount;

  Remaining_filter(this._reduce_amount);

  @override
  bool apply(item_price) {
    return item_price < _reduce_amount;
  }

  static less_then_reduce(List<Product> items, Filter<int> filter) {
    items
        .where((item) => filter.apply((item.amount)))
        .forEach((item) => print(item.toString()));
    print('__________________');
  }
}
