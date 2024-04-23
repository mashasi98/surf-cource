import 'category_filter.dart';
import 'price_filter.dart';
import 'remaining_filter.dart';
import 'utils.dart';

void main() {
  final articles = '''
1,хлеб,Бородинский,500,5
2,хлеб,Белый,200,15
3,молоко,Полосатый кот,50,53
4,молоко,Коровка,50,53
5,вода,Апельсин,25,100
6,вода,Бородинский,500,5''';
  var utils = Utils();
  var articlesList = utils.stringToList(articles);

  Categoryfilter.applyFilter(articlesList, Categoryfilter("хлеб"));
  PriceFilter.lessThenOrEqualsReduce(articlesList, PriceFilter(300.0));
  RemainingFilter.lessThenReduce(articlesList, RemainingFilter(15));
}
