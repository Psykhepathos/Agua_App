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
        title: const Text('Teste de Componentes'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Buttons.SquareButton(
                        context,
                        icon: "Search",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "Settings",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "RightArrow",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Buttons.SquareButton(
                        context,
                        icon: "Reload",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "Notifications",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "History",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Buttons.SquareButton(
                        context,
                        icon: "QuestionMark",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "Right",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "Left",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Buttons.SquareButton(
                        context,
                        icon: "Money",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "Home",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "Contact",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Buttons.SquareButton(
                        context,
                        icon: "Trash",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "Whatsapp",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "Phone",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Buttons.SquareButton(
                        context,
                        icon: "Copasa",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "Exit",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "Edit",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Buttons.SquareButton(
                        context,
                        icon: "User",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "CheckMark",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "aaaa",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Container(
              color: Color.fromARGB(255, 92, 190, 191),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Buttons.SquareButton(
                        context,
                        icon: "Search",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "Settings",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "RightArrow",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Buttons.SquareButton(
                        context,
                        icon: "Reload",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "Notifications",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "History",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Buttons.SquareButton(
                        context,
                        icon: "QuestionMark",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "Right",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "Left",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Buttons.SquareButton(
                        context,
                        icon: "Money",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "Home",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "Contact",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Buttons.SquareButton(
                        context,
                        icon: "Trash",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "Whatsapp",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "Phone",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Buttons.SquareButton(
                        context,
                        icon: "Copasa",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "Exit",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "Edit",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Buttons.SquareButton(
                        context,
                        icon: "User",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "CheckMark",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.SquareButton(
                        context,
                        icon: "aaaa",
                        colors: [Color(0x1348569)],
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
