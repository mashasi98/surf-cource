enum Discipline {
  Single('Одиночное катание'),
  Pair('Парное катание'),
  Dance('Танцы на льду'),
  Accompaniment('Фигурное катание на коньках с сопровождением'),
  Group('Групповое производство в синхронном катании');

  final String value;

  const Discipline(this.value);
}
