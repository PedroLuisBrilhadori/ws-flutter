import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int _selectedIndex = 0;

  static const List<String> routesName = [
    "/conversas",
    "/empresa",
    "/configuracoes"
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      final String route = routesName.elementAt(index);

      print(route);

      Modular.to.navigate(route);
    });
  }

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(routesName.first);

    return Scaffold(
      appBar: AppBar(
        title: const Text('WS Flutter'),
      ),
      body: RouterOutlet(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Conversas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Empresa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
