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

    print('Карты противника: $_currentHand');
    print('Шанс на победу: $_surenessInWin');
  }
}

void main() {
  final opponent = PokerPlayer();

  final Strategy fakeStrategy = (p0, p1) {
    return (p0.length + p1.length).toDouble();
  };

  opponent.calculateProbabilities(
    ['Nine of diamonds', 'king of hearts'],
    fakeStrategy,
  );
}
