
import 'package:flutter_getit/flutter_getit.dart';
import 'package:signals_flutter/signals_flutter.dart';
import 'package:sincofarma/src/model/mock/dummy_data.dart';
import 'package:sincofarma/src/model/mock/dummy_model.dart';

class CertificatesController {
  final controller = Injector.get<DummyData>();
  
  ListSignal<DummyModel> listCertificate = listSignal([]);

  void allCertificate(){
    listCertificate.addAll(controller.data);
  }
}