import 'package:flutter_getit/flutter_getit.dart';
import 'package:signals_flutter/signals_flutter.dart';
import 'package:sincofarma/src/model/mock/dummy_data.dart';
import 'package:sincofarma/src/model/mock/dummy_model.dart';

class NextCoursesController {
  final _dummyData = Injector.get<DummyData>();

  // ignore: prefer_final_fields
  ListSignal<DummyModel> _filteredCourses = ListSignal<DummyModel>([]);

  ListSignal<DummyModel> get filteredCourses => _filteredCourses;
  void get allCourses => _allCourses();

  void _allCourses() => _filteredCourses.addAll(_dummyData.data);

  void filterCourses(String? query) {
    if (query == null || query.isEmpty) {
      _filteredCourses.clear();
      _allCourses();
    } else {
      final filteredList = _dummyData.data
          .where((element) =>
              element.course.toLowerCase().contains(query.toLowerCase()))
          .toList();
      _filteredCourses.value = filteredList;
    }
  }
}
