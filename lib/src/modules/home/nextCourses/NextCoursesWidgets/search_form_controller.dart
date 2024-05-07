import 'package:flutter/material.dart';

import 'search_button_widget.dart';

mixin SearchFormController on State<SearchButtonWidget> {
  final filteredCourseEC = TextEditingController();

  void disposeForm() {
    filteredCourseEC.dispose();
  }
}
