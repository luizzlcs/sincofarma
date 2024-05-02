import 'package:flutter/material.dart';

import 'search_button.dart';

mixin SearchFormController on State<SearchButton> {
  final filteredCourseEC = TextEditingController();

  void disposeForm() {
    filteredCourseEC.dispose();
  }
}
