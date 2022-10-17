class Ticker{
  const Ticker();
  Stream<int> tick({required int ticks}){
    return Stream.periodic(const Duration(seconds: 1), (x) => ticks-x-1)
        .take(ticks);
  }
}


//Takes the duration of timer we want(ticks) and returns the remaining time left