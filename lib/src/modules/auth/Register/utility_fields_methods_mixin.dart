import 'package:flutter/material.dart';

mixin UtilityFieldsMethods<T extends StatefulWidget> on State<T> {
  final formKey = GlobalKey<FormState>();
  final cnpjEC = TextEditingController();
  final cpfEC = TextEditingController();
  final nameEC = TextEditingController();
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();
  final confirmPasswordEC = TextEditingController();

  final FocusNode confirmpasswordFocus = FocusNode();
  final FocusNode registerFocus = FocusNode();

  @override
  void dispose() {
    cnpjEC.dispose();
    cpfEC.dispose();
    nameEC.dispose();
    emailEC.dispose();
    passwordEC.dispose();
    confirmPasswordEC.dispose();
    confirmpasswordFocus.dispose();
    registerFocus.dispose();
    super.dispose();
  }
  
}
