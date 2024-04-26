
import 'package:signals_flutter/signals_flutter.dart';

class RegisterController {
  final _obscurePassword = signal(true);
  final _obscureConfirmPassword = signal(true);

  final _registed = signal(false);

  bool get obscurePassword => _obscurePassword();
  bool get obscureConfirmPassword => _obscureConfirmPassword();

  bool get logged => _registed();

  void obscureToggle() => _obscurePassword.value = !_obscurePassword.value;
  void obscureToggleConfirm() => _obscureConfirmPassword.value = !_obscureConfirmPassword.value;

   Future<void> login() async {
    _registed.value = true;
  }
}