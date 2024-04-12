enum Condition {
  bad('плохое'),
  satisfactory('удовлетворительное'),
  normal('нормальное'),
  good('хорошее'),
  excellent('новое');

  final String value;

  const Condition(this.value);
}
