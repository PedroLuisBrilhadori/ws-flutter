import 'package:flutter_modular/flutter_modular.dart';
import 'package:ws_flutter/app/modules/company/company.widget.dart';

class CompanyModule extends Module {
  @override
  void routes(r) {
    r.child('/', child: (c) => CompanyWidget());
  }
}
