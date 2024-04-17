class Product {
  int _itemId;
  String _category;
  String _title;
  double _price;
  int _amount;

  Product(this._itemId, this._category, this._title, this._price, this._amount);

  int get itemId => _itemId;

  String get category => _category;

  double get price => _price;

  String get title => _title;

  int get amount => _amount;

  @override
  String toString() {
    return '$_itemId\t$_category\t$_title\t$_price рублей \t$_amount шт';
  }
}
