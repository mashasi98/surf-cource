import '../enum/discipline.dart';
import '../enum/skill.dart';
import '../enum/type_of_sportsmen.dart';
import 'sportsman.dart';

class Figure_skater extends Sportsman {
  Skill figure_level;
  Discipline discipline;

  Figure_skater(
      super._fio,
      super._age,
      super._typeOfSportsmen,
      super._yearsInSport,
      super._achievements_and_awards,
      this.figure_level,
      this.discipline);

  Figure_skater.withoutAwards(
      String fio,
      int age,
      Type_of_sportsman typeOfSportsmen,
      int yearsInSport,
      this.figure_level,
      this.discipline)
      : super.withoutAwards(fio, age, yearsInSport, typeOfSportsmen);

  void change_level(Skill new_level) {
    figure_level = new_level;
    print('Уровень изменен на - ${figure_level.value}');
  }

  @override
  show_info_about_me() {
    super.show_info_about_me();
    print('Уровень - ${figure_level.value} \n'
        'Дисциплина - ${discipline.value} \n');
  }
}
