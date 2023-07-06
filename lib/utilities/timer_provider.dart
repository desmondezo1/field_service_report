import 'dart:async';
import 'package:flutter/cupertino.dart';

class TimerModel extends ChangeNotifier {
  bool isRunning = false;
  bool paused = false;
  Duration duration = Duration();
  Timer? timer;

  int get hours => duration.inHours;
  int get minutes => duration.inMinutes.remainder(60);
  int get seconds => duration.inSeconds.remainder(60);

  void startTimer() {
    print('$paused');
    if (paused && isRunning) {
      timer = Timer.periodic(Duration(seconds: 1), (_) {
        duration += Duration(seconds: 1);
        notifyListeners();
      });

      paused = false;
      isRunning = true;

      return;
    }

    if (!paused && isRunning) {
      return;
    }

    isRunning = true;
    paused = false;

    timer = Timer.periodic(Duration(seconds: 1), (_) {
      duration += Duration(seconds: 1);
      notifyListeners();
    });
    notifyListeners();
  }

  void pauseTimer() {
    if (paused) {
      isRunning = true;
      startTimer(); // Resume the timer
    } else {
      isRunning = true;
      paused = true;
      timer?.cancel(); // Pause the timer
    }
    notifyListeners();
  }

  void stopTimer() {
    isRunning = false;
    paused = true;
    duration = const Duration();
    timer?.cancel();
    notifyListeners();
  }
}
