import 'package:flutter_getit/flutter_getit.dart';
import 'package:signals_flutter/signals_flutter.dart';
import 'package:sincofarma/src/model/mock/class_dummy.dart';
import 'package:sincofarma/src/model/mock/class_model.dart';

class SelectClassController {
  final _controller = Injector.get<ClassesDummy>();
  
  final ListSignal<ClassModel> _classList = ListSignal<ClassModel>([]);

  ListSignal<ClassModel> get classList => _classList;
  get allClasses => _allClasses();

  void _allClasses() {
    _classList.addAll(_controller.dataDummy);
  }
}
