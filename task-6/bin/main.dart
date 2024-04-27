import 'dart:math';

typedef Strategy = double Function(
    List<String> cardOnDesk, List<String> _currentHand);

class PokerPlayer {
  List<String> _currentHand = ['King of clubs', 'Nine of hearts'];
  double _surenessInWin = 0;

  void calculateProbabilities(
    List<String> cardOnDesk,
    Strategy strategy,
  ) {
    _surenessInWin = strategy(cardOnDesk, _currentHand);
  }
}

void main() {
  final opponent = PokerPlayer();

  final Strategy fakeStrategy = (p0, p1) {
    print('Карты противника: $p1');
    var chance = Random().nextInt(100) / 100.0;
    print('Шанс на победу: $chance');
    return chance;
  };

  opponent.calculateProbabilities(
    ['Nine of diamonds', 'king of hearts'],
    fakeStrategy,
  );
}
