import 'package:flutter_modular/flutter_modular.dart';
import 'package:ws_flutter/app/modules/company/company.module.dart';
import 'package:ws_flutter/app/modules/conversations/conversation.module.dart';
import 'package:ws_flutter/app/modules/home/home.widget.dart';
import 'package:ws_flutter/app/modules/settings/settings.module.dart';

class HomeModule extends Module {
  @override
  void routes(r) {
    r.child('/', child: (c) => HomeWidget(), children: [
      ModuleRoute('/conversas', module: ConversationModule()),
      ModuleRoute('/empresa', module: CompanyModule()),
      ModuleRoute('/configuracoes', module: SettingsModules())
    ]);
  }
}
