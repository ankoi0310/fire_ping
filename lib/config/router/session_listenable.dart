import 'dart:async';

import 'package:fire_ping/features/auth/presentation/blocs/auth_bloc.dart';
import 'package:flutter/material.dart';

class SessionListenable extends ChangeNotifier {
  SessionListenable(Stream<AuthState> stream) {
    _subscription = stream.listen((_) {
      notifyListeners();
    });
  }

  late final StreamSubscription<AuthState> _subscription;

  @override
  Future<void> dispose() async {
    await _subscription.cancel();
    super.dispose();
  }
}
