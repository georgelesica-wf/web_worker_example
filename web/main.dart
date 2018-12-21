import 'dart:html';

void main() {
  final worker = new Worker('worker.dart.js');

  worker.onMessage.listen((event) {
    final data = event.data;
    print('[main] received a message: $data');
  });

  final message = 'George';
  worker.postMessage(message);
  print('[main] sent a message: $message');
}
