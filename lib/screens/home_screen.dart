import 'package:esh_pizza/sale_screen/sale_screen.dart';
import 'package:esh_pizza/screens/auth_screen.dart';
import 'package:esh_pizza/screens/menu_screen/menu_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTab = 0;

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    MenuScreen(),
    SaleScreen(),
    Text('data'),
    AuthList(),
    Text('data'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: const Text('esh_pizza'),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: 28),
            icon: const Icon(
              Icons.restaurant_menu_sharp,
              size: 27,
            ),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedTab),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.local_pizza_rounded),
            label: 'Меню',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.percent_outlined),
            label: 'Акции',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_circle_outlined),
            label: 'Профиль',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: 'Инфо',
          )
        ],
        currentIndex: _selectedTab,
        onTap: onSelectedTab,
      ),
    );
  }
}
