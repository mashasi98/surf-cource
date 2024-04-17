import '../enum/type_of_sportsmen.dart';

abstract class Sportsman {
  String fio;
  int _age;
  int _years_in_sport;
  Type_of_sportsman _type_of_sportsman;
  List<String> _achievements_and_awards;

  Sportsman(this.fio, this._age, this._years_in_sport, this._type_of_sportsman,
      this._achievements_and_awards);

  Sportsman.withoutAwards(
    this.fio,
    this._age,
    this._years_in_sport,
    this._type_of_sportsman,
  ) : this._achievements_and_awards = [];

  void show_info_about_me() {
    print('_______________\n'
        'ФИО : $fio \n'
        'Возраст: $_age \n'
        'Тип участия: ${_type_of_sportsman.value}\n'
        'Опыт: $_years_in_sport \n'
        '${show_achievements_and_awards(_achievements_and_awards)}');
  }

  String show_achievements_and_awards(List<String> achievementsList) {
    String achievements = '\n Награды: \n';
    achievementsList.length != 0
        ? achievementsList.forEach((element) => achievements += '- $element \n')
        : achievements += 'нет \n';
    return achievements;
  }
}
