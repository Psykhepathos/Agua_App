import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/buttons.dart';
import 'components/buttons.dart';

main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: ThemeData()
            .colorScheme
            .copyWith(primary: const Color.fromRGBO(255, 149, 149, 1)),
        errorColor: Colors.purple,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teste de Componentes'),
        centerTitle: true,
      ),
      body: Center(child: Buttons.largeButton(context, function: () {})),
    );
  }
}
