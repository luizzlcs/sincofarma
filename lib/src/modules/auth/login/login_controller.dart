import 'package:signals_flutter/signals_flutter.dart';

import '../../../helpers/messages.dart';

class LoginController with MessageStateMixin {
  final _obscurePassword = signal(true);
  final _logged = signal(false);

  bool get logged => _logged();
  bool get obscurePassword => _obscurePassword();

  void obscureToggle() => _obscurePassword.value = !_obscurePassword.value;

  Future<void> login(String email, String password) async {
    _logged.value = true;
  }
}
