import 'package:flutter_modular/flutter_modular.dart';
import 'package:ws_flutter/app/modules/home/home.module.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module('/', module: HomeModule());
  }
}
