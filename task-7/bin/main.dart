import 'entity/figure_skater.dart';
import 'entity/instructor.dart';
import 'entity/sportsman.dart';
import 'enum/discipline.dart';
import 'enum/skill.dart';
import 'enum/type_of_sportsmen.dart';

void main() {
  var instructorIvanov = Instructor(
    'Иванов Иван Иванович',
    40,
    15,
    Type_of_sportsman.Instructor,
    ['Победитель чемпионата года', 'Победитель Олимпийских игр'],
    5,
  );

  var figureSkaterSidorova = Figure_skater(
      'Сидорова Анна Сергеевна',
      25,
      10,
      Type_of_sportsman.Figure_skater,
      ['Чемпионка региона', 'Призер национального турнира'],
      Skill.advanced,
      Discipline.Dance);

  var instructorPetrov = Instructor.withWards(
      'Петров Петр Петрович',
      45,
      20,
      Type_of_sportsman.Instructor,
      ['Чемпион мира', 'Победитель кубка'],
      7,
      [figureSkaterSidorova]);

  var figureSkaterKozlova = Figure_skater(
      'Козлова Мария Александровна',
      20,
      5,
      Type_of_sportsman.Figure_skater,
      ['Чемпионка мира', 'Победительница Европейского кубка'],
      Skill.intermediate,
      Discipline.Accompaniment);

  var figureSkaterIvanova = Figure_skater.withoutAwards(
      'Иванова Елена Владимировна',
      18,
      Type_of_sportsman.Figure_skater,
      3,
      Skill.beginner,
      Discipline.Single);

  var figureSkaterSmirnova = Figure_skater(
      'Смирнова Ольга Алексеевна',
      22,
      7,
      Type_of_sportsman.Figure_skater,
      ['Призерка национального турнира', 'Участница чемпионата Европы'],
      Skill.advanced,
      Discipline.Dance);

  var all_sportsman = [
    figureSkaterSmirnova,
    figureSkaterIvanova,
    figureSkaterKozlova,
    figureSkaterSidorova,
    instructorPetrov,
    instructorIvanov
  ];

  all_sportsman.forEach((element) => element.show_info_about_me());
}
