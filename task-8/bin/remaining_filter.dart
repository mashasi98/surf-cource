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
    for (var item in items) {
      if (filter.apply(item.amount)) {
        print(item.toString());
      }
    }
    print('__________________');
  }
}
