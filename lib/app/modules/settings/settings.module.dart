import 'package:flutter_modular/flutter_modular.dart';
import 'package:ws_flutter/app/modules/settings/settings.widget.dart';

class SettingsModules extends Module {
  @override
  void routes(r) {
    r.child('/', child: (c) => SettingsWidget());
  }
}
