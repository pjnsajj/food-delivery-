import 'package:esh_pizza/sale_screen/sale_list.dart';
import 'package:flutter/material.dart';
import 'package:sliding_switch/sliding_switch.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ColoredBox(
          color: Colors.orange,
          child: OrderSwitch(),
        ),
        ColoredBox(
          color: Colors.orange,
          child: SaleList(),
        ),
        ColoredBox(
          color: Colors.orange,
          child: SizedBox(height: 15),
        ),
        ColoredBox(
          color: Colors.orange,
          child: PromoCode(),
        ),
        MenuList(),
      ],
    );
  }
}

final List<String> menulist = [
  'Пицца',
  'Роллы',
  'Суши',
  'Десерты',
  'Салаты',
  'Вок',
  'Сеты и комбо',
  'Напитки',
  'Супы',
  'Закуски',
  'Поке и боулы'
];

class MenuList extends StatelessWidget {
  const MenuList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 10),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: menulist.length,
      itemBuilder: (BuildContext ctx, index) {
        return InkWell(
          onTap: () {
            Navigator.of(context).pushNamed('menu');
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/${index + 1}.jpg'),
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    menulist[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class PromoCode extends StatelessWidget {
  const PromoCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 16, 16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 211, 122, 28),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 200,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        height: 40,
                        child: TextField(
                          showCursor: false,
                          style: const TextStyle(
                            fontSize: 18,
                            height: 2.5,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            hintText: 'Введите промокод',
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.orange)),
                        child: const Text('Применить'),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: const Text(
          'Промокод',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class OrderSwitch extends StatelessWidget {
  const OrderSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 15),
      child: Column(
        children: [
          SlidingSwitch(
            value: false,
            width: MediaQuery.of(context).size.width,
            onChanged: (bool value) {
              print(value);
            },
            height: 35,
            animationDuration: const Duration(milliseconds: 400),
            onTap: () {},
            onDoubleTap: () {},
            onSwipe: () {},
            textOff: "Доставка",
            textOn: "Заберу сам",
            colorOn: const Color.fromARGB(255, 244, 244, 244),
            colorOff: const Color.fromARGB(255, 255, 255, 255),
            background: const Color.fromARGB(255, 211, 122, 28),
            buttonColor: Colors.orange,
            inactiveColor: const Color.fromARGB(255, 253, 253, 253),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 40,
            child: TextField(
              readOnly: true,
              onTap: () {
                print('Hi');
              },
              style: const TextStyle(
                fontSize: 18,
                height: 2.5,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                hintText: 'Укажите адрес доставки',
                filled: true,
                fillColor: Colors.white,
                suffixIcon: const Icon(
                  Icons.keyboard_arrow_right,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
