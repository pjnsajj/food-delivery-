import 'package:flutter/material.dart';

class SaleScreen extends StatefulWidget {
  const SaleScreen({super.key});

  @override
  State<SaleScreen> createState() => _SaleScreenState();
}

class _SaleScreenState extends State<SaleScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GridView.builder(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 10),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: saleDiscriptions.length,
          itemBuilder: (BuildContext ctx, index) {
            return InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 200,
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
                            child: Text(saleButtonDescriptions[index]),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Card(
                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.only(bottom: 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('images/sale_photos/${index + 1}.jpg'),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          saleDiscriptions[index],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.green),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, left: 30, right: 30),
                          child:
                              Text('Промокод${saleButtonDescriptions[index]}'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

final List<String> saleDiscriptions = [
  'Дарим Мясную пиццу 30 см при заказе от 9 990 т. или Мясную 40 см от 14 990 т.',
  'Даем скидку на первый заказ в мобильном приложении: 5% при заказе от 3990 т., 15% при заказе от 9990 т., 25% при заказе от 17990 т.',
  'Закажите две пиццы любого размера и получите третью пиццу 30 см в подарок. На выбор: Пепперони, Аппетитная Курочка, Ветчина Грибы, Сливочная или Маргарита.',
  '10 горячих пицц и 4 литра чая каркаде. Что может быть лучше для большой компании?',
  'Напал ночной жор? Мы спешим на помощь! С часа ночи до пяти утра дарим скидки: 5% при заказе от 4990 т., 12% - от 7990 т., 20% - от 12 990 т.',
  'По будням при заказе через мобильное приложение с 14:00 до 16:00 скидка на все меню: 10% при заказе от 5490 т., 15% - от 7490 т., 20% - от 12 490 т.',
  'На День Рождения мы дарим Вам на выбор одно из 8 блюд нашего меню.',
  'Сет из пяти пицц всего за 13 490 т.: Пепперони, Четыре Сыра, Аппетитная Курочка, Маргарита и Ветчина Грибы.',
];

final List<String> saleButtonDescriptions = [
  ' MEATPIZZA',
  ' NEW15',
  ' 333',
  ' PARTYHARD',
  ' НОЧЬ',
  ' HAPPYHOUR',
  ' YOURDAY',
  ' ДЛЯДРУЗЕЙ',
];
