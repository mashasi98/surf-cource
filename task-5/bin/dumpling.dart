class Dumpling {
  final int countDumplingInPackage;
  bool areDumplingsReady = false;
  final int timeOfBoiling;

  Dumpling.withoutDumplingReady(
      this.countDumplingInPackage, this.timeOfBoiling);

  Dumpling(
      this.countDumplingInPackage, this.areDumplingsReady, this.timeOfBoiling);

  void pourDumpling(int countDumplingInPackage) {
    while (countDumplingInPackage > 0) {
      print(" Ψ(￣∀￣)Ψ ВЫСЫПАЕМ ПЕЛЬМЕШКИИ Ψ(￣∀￣)Ψ");
      countDumplingInPackage -= 5;
    }
    print("Казна c пельменями пуста ,милорд (╯°Д°)╯ ┻━┻");
  }

  boilDumpling() {
    print('Время варки $timeOfBoiling , Ждемс (｡╯︵╰｡)');
    var time = 0;
    while (timeOfBoiling > time) {
      print(
          "Пельмешки крутятся , водичка мутится ...Перемешиваем активнее активнее 〜(꒪꒳꒪)〜");
      time += 5;
    }
    print('( ・ω・)o─━・*:・:・゜・:ГОТОВО ');
  }
}