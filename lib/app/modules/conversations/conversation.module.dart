import 'package:flutter_modular/flutter_modular.dart';
import 'package:ws_flutter/app/modules/conversations/conversation.widget.dart';

class ConversationModule extends Module {
  @override
  void routes(r) {
    r.child('/', child: (c) => ConversationWidget());
  }
}
