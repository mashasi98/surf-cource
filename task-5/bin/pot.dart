class Pot {
  final double volume;
  bool isPotFull = false;
  bool isWaterHit = false;
  final int timeOfHint;

  Pot(this.volume, this.isPotFull, this.isWaterHit, this.timeOfHint);

  Pot.empty(this.volume, this.timeOfHint);

  void pourWater() {
    var littersOfWater = 0.0;
    print("*Звуки откртывающегося крана и грохата кострюли");
    print("Нужно больше золот...кхм...воды");
    print("А не спеть ли мне песню,про пельмень.....");

    while (littersOfWater < (volume - 0.5)) {
      print(" (*ﾉ・ω・)ﾉ♫ Журчит ручей, течет ручей 💧💧💧💧");
      littersOfWater += 0.5;
    }
    print('Почему вода такая важная на кухне? '
        'Потому что без неё невозможно сварить хороший суп -'
        ' она всегда добавляет в него свой шарм! (@ ChatGPT)\n'
        'Кастрюля полна.За дело!\n');
    isPotFull = true;
  }

  void boilWater() {
    var timeNow = 0;
    while (timeOfHint < timeNow) {
      print('（╯－＿－）╯╧╧ Ты уже закипела ?');
      timeNow += 5;
    }
    isWaterHit = true;
    print('Ψ(｀▽´)Ψ Горяча и бурляща,как котел в Аду  Ψ(｀▽´)Ψ');
  }
}