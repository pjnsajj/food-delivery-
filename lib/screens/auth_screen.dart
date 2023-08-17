import 'package:flutter/material.dart';
import '../widgets/esh_pizza_widgets.dart';

class AuthList extends StatefulWidget {
  const AuthList({super.key});

  @override
  State<AuthList> createState() => _AuthListState();
}

class _AuthListState extends State<AuthList> {
  final loginTextController = TextEditingController(text: 'admin');
  final passwordTextController = TextEditingController(text: 'admin');
  String? errorText = null;

  _auth() {
    final login = loginTextController.text;
    final password = passwordTextController.text;
    if (login == 'admin' && password == 'admin') {
      errorText = null;
      final navigator = Navigator.of(context);
      navigator.pushNamed('/');
    } else {
      errorText = 'Не верный логин или пароль';
    }
    setState(() {});
  }

  void _resetPassword() {
    print('Забыли пароль?');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (errorText != null) ...[
              const Text(
                'Не верный логин или пароль',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
            const SizedBox(height: 20),
            const Text(
              'Войти',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 25),
            const Text('Эл. почта'),
            const SizedBox(height: 15),
            TextField(
                controller: loginTextController,
                decoration: textFieldDecoration),
            const SizedBox(height: 15),
            const Text('Пароль'),
            const SizedBox(height: 5),
            TextField(
                controller: passwordTextController,
                decoration: textFieldDecoration),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: _resetPassword,
                  child: const Text('Забыли пароль?'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('register_list');
                  },
                  child: const Text('Регистрация'),
                ),
              ],
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: _auth,
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.green,
                ),
                foregroundColor: MaterialStatePropertyAll(
                  Colors.white,
                ),
              ),
              child: const Text(
                'Войти ',
                textAlign: TextAlign.center,
                style: WhiteTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
