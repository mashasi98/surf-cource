import 'dart:collection';

enum Countries { brazil, russia, turkish, spain, japan }

class Territory {
  final int areaInHectare;
  final List<String> crops;
  final List<AgriculturalMachinery> machineries;

  Territory(
    this.areaInHectare,
    this.crops,
    this.machineries,
  );
}

class AgriculturalMachinery {
  final String id;
  final DateTime releaseDate;

  AgriculturalMachinery(
    this.id,
    this.releaseDate,
  );

  /// Переопределяем оператор "==", чтобы сравнивать объекты по значению.
  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        (other is AgriculturalMachinery &&
            other.id == id &&
            other.releaseDate == releaseDate);
  }

  @override
  int get hashCode => Object.hashAll([id, releaseDate]);
}

final mapBefore2010 = <Countries, List<Territory>>{
  Countries.brazil: [
    Territory(
      34,
      ['Кукуруза'],
      [
        AgriculturalMachinery(
          'Трактор Степан',
          DateTime(2001),
        ),
        AgriculturalMachinery(
          'Культиватор Сережа',
          DateTime(2007),
        ),
      ],
    ),
  ],
  Countries.russia: [
    Territory(
      14,
      ['Картофель'],
      [
        AgriculturalMachinery(
          'Трактор Гена',
          DateTime(1993),
        ),
        AgriculturalMachinery(
          'Гранулятор Антон',
          DateTime(2009),
        ),
      ],
    ),
    Territory(
      19,
      ['Лук'],
      [
        AgriculturalMachinery(
          'Трактор Гена',
          DateTime(1993),
        ),
        AgriculturalMachinery(
          'Дробилка Маша',
          DateTime(1990),
        ),
      ],
    ),
  ],
  Countries.turkish: [
    Territory(
      43,
      ['Хмель'],
      [
        AgriculturalMachinery(
          'Комбаин Василий',
          DateTime(1998),
        ),
        AgriculturalMachinery(
          'Сепаратор Марк',
          DateTime(2005),
        ),
      ],
    ),
  ],
};

final mapAfter2010 = {
  Countries.turkish: [
    Territory(
      22,
      ['Чай'],
      [
        AgriculturalMachinery(
          'Каток Кирилл',
          DateTime(2018),
        ),
        AgriculturalMachinery(
          'Комбаин Василий',
          DateTime(1998),
        ),
      ],
    ),
  ],
  Countries.japan: [
    Territory(
      3,
      ['Рис'],
      [
        AgriculturalMachinery(
          'Гидравлический молот Лена',
          DateTime(2014),
        ),
      ],
    ),
  ],
  Countries.spain: [
    Territory(
      29,
      ['Арбузы'],
      [
        AgriculturalMachinery(
          'Мини-погрузчик Максим',
          DateTime(2011),
        ),
      ],
    ),
    Territory(
      11,
      ['Табак'],
      [
        AgriculturalMachinery(
          'Окучник Саша',
          DateTime(2010),
        ),
      ],
    ),
  ],
};

void main() {
  Analyzer analyzer = Analyzer();
  final List<AgriculturalMachinery> machineListBefore2010 =
      analyzer.getList(mapBefore2010);
  final List<AgriculturalMachinery> machineListAfter2010 =
      analyzer.getList(mapAfter2010);
  final List<AgriculturalMachinery> allMachine =
      analyzer.summaryList(machineListBefore2010, machineListAfter2010);
  analyzer.showAverageAge(allMachine, 'Средний возраст всей техники');
  analyzer.showAverageAge(Analyzer().getOldestPart(allMachine),
      'Средний возраст самой старой техники');
}

class Analyzer {
  List<AgriculturalMachinery> getList(Map<Countries, List<Territory>> map) =>
      map.values
          .expand((allTerritory) => allTerritory
              .map((currentTerritory) => currentTerritory.machineries))
          .expand((machines) => machines.toList())
          .toList();

  List<AgriculturalMachinery> summaryList(List<AgriculturalMachinery> fistList,
          List<AgriculturalMachinery> secondList) =>
      fistList + secondList;

  void showAverageAge(List<AgriculturalMachinery> allMachine, String message) {
    final averageAge = allMachine.fold(
            0,
            (previousValue, element) =>
                previousValue +
                (DateTime.now().year - element.releaseDate.year)) /
        allMachine.length;
    print('$message - ${averageAge.round()}.');
  }

  List<AgriculturalMachinery> getOldestPart(
      List<AgriculturalMachinery> machineList) {
    final sortedMachineList = getSortedByAgeUniqueMachine(machineList);
    return machineList.sublist(0, (sortedMachineList.length ~/ 2).round());
  }

  SplayTreeSet<AgriculturalMachinery> getSortedByAgeUniqueMachine(
      List<AgriculturalMachinery> machineList) {
    final nonRepeatingMachine =
        SplayTreeSet<AgriculturalMachinery>((a, b) => a.id.compareTo(b.id));
    nonRepeatingMachine.addAll(machineList);
    return nonRepeatingMachine;
  }
}
