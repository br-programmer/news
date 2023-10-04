import 'dart:async';
import 'dart:ui';

class Debouncer {
  Debouncer({required this.milliseconds});

  final int milliseconds;
  VoidCallback? action;
  Timer? _timer;

  void run(VoidCallback action) {
    cancel();
    _timer = Timer(
      Duration(milliseconds: milliseconds),
      action,
    );
  }

  void cancel() => _timer?.cancel();
}
