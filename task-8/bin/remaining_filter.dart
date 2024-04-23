import 'filter.dart';
import 'product.dart';

class RemainingFilter implements Filter<int> {
  int _reduceAmount;

  RemainingFilter(this._reduceAmount);

  @override
  bool apply(itemPrice) {
    return itemPrice < _reduceAmount;
  }

  static lessThenReduce(List<Product> items, Filter<int> filter) {
    items
        .where((item) => filter.apply((item.amount)))
        .forEach((item) => print(item.toString()));
    print('__________________');
  }
}
