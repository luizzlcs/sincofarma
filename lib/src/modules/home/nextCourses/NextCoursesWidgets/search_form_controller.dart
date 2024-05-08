import 'package:flutter/material.dart';

import 'search_bar_widget.dart';

mixin SearchFormController on State<SearchBarWidget> {
  final filteredCourseEC = TextEditingController();

  void disposeForm() {
    filteredCourseEC.dispose();
  }
}
