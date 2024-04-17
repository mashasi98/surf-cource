import 'figure_skater.dart';
import 'sportsman.dart';

class Instructor extends Sportsman {
  int years_of_instruction;
  List<Figure_skater> wards;

  Instructor(
      super._fio,
      super._age,
      super._typeOfSportsmen,
      super._yearsInSport,
      super._achievements_and_awards,
      this.years_of_instruction)
      : this.wards = [];

  Instructor.withWards(super._fio, super._age, super.type, super._yearsInSport,
      super._achievements_and_awards, this.years_of_instruction, this.wards);

  @override
  show_info_about_me() {
    super.show_info_about_me();
    _show_list_of_wards();
  }

  void _show_list_of_wards() {
    print("Подопечные : ");
    wards.isEmpty
        ? print("нет")
        : wards.forEach((element) => print('- ${element.fio} \n'));
  }
}
