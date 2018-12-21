import 'dart:html';

void main() {
  DedicatedWorkerGlobalScope.instance.onMessage.listen((event) {
    final data = event.data;
    print('[worker] received a message: $data');

    final reply = data is String ? 'Hello, $data' : 'Not sure what you mean';
    DedicatedWorkerGlobalScope.instance.postMessage(reply);
    print('[worker] sent a message: $reply');
  });
}
