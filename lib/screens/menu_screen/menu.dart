import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(isScrollable: true, tabs: [
            Tab(
              text: 'Пицца',
            ),
            Tab(
              text: 'Роллы',
            ),
            Tab(
              text: 'Суши',
            ),
            Tab(
              text: 'Десерты',
            ),
            Tab(
              text: 'Салаты',
            ),
            Tab(
              text: 'Вок',
            ),
            Tab(
              text: 'Сеты и комбо',
            ),
            Tab(
              text: 'Напитки',
            ),
            Tab(
              text: 'Супы',
            ),
            Tab(
              text: 'Закуски',
            ),
            Tab(
              text: 'Поке и боулы',
            ),
            Tab(
              text: 'Соусы к пицце',
            ),
          ]),
        ),
        body: TabBarView(children: [
          Image(
            image: AssetImage('images/1.jpg'),
          ),
          Image(
            image: AssetImage('images/2.jpg'),
          ),
          Image(
            image: AssetImage('images/3.jpg'),
          ),
          Image(
            image: AssetImage('images/4.jpg'),
          ),
          Image(
            image: AssetImage('images/5.jpg'),
          ),
          Image(
            image: AssetImage('images/6.jpg'),
          ),
          Image(
            image: AssetImage('images/7.jpg'),
          ),
          Image(
            image: AssetImage('images/8.jpg'),
          ),
          Image(
            image: AssetImage('images/9.jpg'),
          ),
          Image(
            image: AssetImage('images/10.jpg'),
          ),
          Image(
            image: AssetImage('images/11.jpg'),
          ),
          Image(
            image: AssetImage('images/11.jpg'),
          ),
        ]),
      ),
    );
  }
}
