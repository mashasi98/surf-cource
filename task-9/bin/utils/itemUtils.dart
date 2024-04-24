import '../entity/rawProductItem.dart';
import '../interface/filter.dart';

class ItemUtils implements Filter<RawProductItem> {
  @override
  bool filter_item(RawProductItem item) {
    return item.expirationDate.isAfter(DateTime.now()) && item.qty > 0;
  }

  List<RawProductItem> _get_items() {
    return [
      RawProductItem(
        name: 'Персик',
        categoryName: 'Растительная пища',
        subcategoryName: 'Фрукты',
        expirationDate: DateTime(2025, 12, 22),
        qty: 5,
      ),
      RawProductItem(
        name: 'Молоко',
        categoryName: 'Молочные продукты',
        subcategoryName: 'Напитки',
        expirationDate: DateTime(2025, 12, 22),
        qty: 5,
      ),
      RawProductItem(
        name: 'Кефир',
        categoryName: 'Молочные продукты',
        subcategoryName: 'Напитки',
        expirationDate: DateTime(2025, 12, 22),
        qty: 5,
      ),
      RawProductItem(
        name: 'Творог',
        categoryName: 'Молочные продукты',
        subcategoryName: 'Не напитки',
        expirationDate: DateTime(2025, 12, 22),
        qty: 0,
      ),
      RawProductItem(
        name: 'Творожок',
        categoryName: 'Молочные продукты',
        subcategoryName: 'Не напитки',
        expirationDate: DateTime(2025, 12, 22),
        qty: 0,
      ),
      RawProductItem(
        name: 'Творог',
        categoryName: 'Молочные продукты',
        subcategoryName: 'Не напитки',
        expirationDate: DateTime(2025, 12, 22),
        qty: 0,
      ),
      RawProductItem(
        name: 'Гауда',
        categoryName: 'Молочные продукты',
        subcategoryName: 'Сыры',
        expirationDate: DateTime(2025, 12, 22),
        qty: 3,
      ),
      RawProductItem(
        name: 'Маасдам',
        categoryName: 'Молочные продукты',
        subcategoryName: 'Сыры',
        expirationDate: DateTime(2025, 12, 22),
        qty: 2,
      ),
      RawProductItem(
        name: 'Яблоко',
        categoryName: 'Растительная пища',
        subcategoryName: 'Фрукты',
        expirationDate: DateTime(2023, 12, 4),
        qty: 4,
      ),
      RawProductItem(
        name: 'Морковь',
        categoryName: 'Растительная пища',
        subcategoryName: 'Овощи',
        expirationDate: DateTime(2025, 12, 23),
        qty: 51,
      ),
      RawProductItem(
        name: 'Черника',
        categoryName: 'Растительная пища',
        subcategoryName: 'Ягоды',
        expirationDate: DateTime(2025, 12, 25),
        qty: 0,
      ),
      RawProductItem(
        name: 'Курица',
        categoryName: 'Мясо',
        subcategoryName: 'Птица',
        expirationDate: DateTime(2025, 12, 18),
        qty: 2,
      ),
      RawProductItem(
        name: 'Говядина',
        categoryName: 'Мясо',
        subcategoryName: 'Не птица',
        expirationDate: DateTime(2025, 12, 17),
        qty: 0,
      ),
      RawProductItem(
        name: 'Телятина',
        categoryName: 'Мясо',
        subcategoryName: 'Не птица',
        expirationDate: DateTime(2025, 12, 17),
        qty: 0,
      ),
      RawProductItem(
        name: 'Индюшатина',
        categoryName: 'Мясо',
        subcategoryName: 'Птица',
        expirationDate: DateTime(2023, 12, 17),
        qty: 0,
      ),
      RawProductItem(
        name: 'Утка',
        categoryName: 'Мясо',
        subcategoryName: 'Птица',
        expirationDate: DateTime(2025, 12, 18),
        qty: 0,
      ),
      RawProductItem(
        name: 'Гречка',
        categoryName: 'Растительная пища',
        subcategoryName: 'Крупы',
        expirationDate: DateTime(2023, 12, 22),
        qty: 8,
      ),
      RawProductItem(
        name: 'Свинина',
        categoryName: 'Мясо',
        subcategoryName: 'Не птица',
        expirationDate: DateTime(2025, 12, 23),
        qty: 5,
      ),
      RawProductItem(
        name: 'Груша',
        categoryName: 'Растительная пища',
        subcategoryName: 'Фрукты',
        expirationDate: DateTime(2025, 12, 25),
        qty: 5,
      ),
    ];
  }

  List<RawProductItem> getAvaliableItems() {
    return _get_items().where((item) => filter_item(item)).toList();
  }

  Set<String> getAvaliableCategotry() {
    return getAvaliableItems().map((item) => item.categoryName).toSet();
  }

  List<RawProductItem> getItemsByCategory(String category) {
    return getAvaliableItems()
        .where((item) => item.categoryName == category)
        .toList();
  }

  Map<String, Map<String, List<String>>> getProductCatalog() {
    Map<String, Map<String, List<String>>> categories = {};

    getAvaliableCategotry().forEach((category) {
      var itemsForCategory = getItemsByCategory(category);

      Map<String, List<String>> subMap = {};
      itemsForCategory.forEach((item) {
        String subcategory = item.subcategoryName;
        if (subMap.containsKey(subcategory)) {
          subMap[subcategory]!.add(item.name);
        } else {
          subMap[subcategory] = [item.name];
        }
      });
      categories[category] = subMap;
    });
    return categories;
  }

  void printCatalog(Map<String, Map<String, List<String>>> catalog) {
    catalog.forEach((category, subcategories) {
      print(category);
      subcategories.forEach((subcategory, items) {
        print('$subcategory: ${items.map((item) => item).join(', ')}');
      });
    });
    print('\n');
  }
}
