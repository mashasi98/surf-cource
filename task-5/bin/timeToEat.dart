import 'dumpling.dart';
import 'pot.dart';

void main() {
  bool isHungry = true;
  var pelmeski = Dumpling.withoutDumplingReady(15, 15);
  var kastrulka = Pot.empty(2, 15);

  while (isHungry) {
    tellAboutYourFelling(isHungry);
    if (isHungry && !pelmeski.areDumplingsReady) {
      kastrulka.pourWater();
      kastrulka.boilWater();
      if (kastrulka.isWaterHit) {
        pelmeski.pourDumpling(pelmeski.countDumplingInPackage);
        pelmeski.boilDumpling();
      }
    }
    print('Омномном');
    isHungry = false;
  }
  tellAboutYourFelling(isHungry);
}

void tellAboutYourFelling(bool areYouOk) {
  print(areYouOk == true
      ? '(⇀‸↼‶) Кушоц хочу (⇀‸↼‶)'
      : '*^ↀᴥↀ^ сытое урчание ^ↀᴥↀ^*');
}