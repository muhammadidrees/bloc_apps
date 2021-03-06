/// The ticker will data source for the timer application.
/// 
/// It will expose a stream of ticks which we can subscribe
/// and react to

class Ticker {
  Stream<int> tick({int ticks}) {
    return Stream.periodic(Duration(seconds: 1), (x) => ticks - x - 1)
      .take(ticks);
  }
}