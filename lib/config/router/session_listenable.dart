import 'dart:async';

import 'package:fire_ping/core/blocs/session/session_cubit.dart';
import 'package:flutter/material.dart';

class SessionListenable extends ChangeNotifier {
  SessionListenable(Stream<SessionState> stream) {
    _subscription = stream.listen((_) {
      notifyListeners();
    });
  }

  late final StreamSubscription<SessionState> _subscription;

  @override
  Future<void> dispose() async {
    await _subscription.cancel();
    super.dispose();
  }
}
