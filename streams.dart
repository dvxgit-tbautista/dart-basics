import 'dart:async';

void main() {
  // Streams
  // Futures represent a value that they deliver asynchronously
  // Streams are similar but instead of a single value they can return zero or mor evalues or errors over time

  // Sync: integer or List<int>
  // Async: Future<int> Stream<int>

  // example: read File,
  // File openRead method
  // returns a stream with the records read one by one
  // you can listen to the stream elsewhere in the program and execute code for each record read

  Stream numberStream = NumberGenerator().getStream.asBroadcastStream();
  //! broadcast -> can handle multiple subscribers

  StreamSubscription sub1 = numberStream.listen(
    (event) {
      print(event);
    },
    onDone: () {
      //will be executed when the stream is finished
    },
    onError: (error) {
      // what should happen when an error occurs
    },
    cancelOnError: true,
  );
}

class NumberGenerator {
  int _counter = 0;

  StreamController<int> _controller = StreamController<int>();

  Stream<int> get getStream => _controller.stream;

  NumberGenerator() {
    final timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _controller.sink.add(_counter);
      _counter++;
    });

    Future.delayed(Duration(seconds: 10), () => timer.cancel());
  }
}
