import '../model/counter_model.dart';

class CounterScreenController {
  factory CounterScreenController() {
    return CounterScreenController._();
  }

  CounterScreenController._();

  int get counter => CounterModel.counter;



  void incrementCounter() {
    CounterModel.incrementCounter();
  }

  void decrementCounter() {
    CounterModel.decrementCounter();
  }
}
