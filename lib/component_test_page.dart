import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/buttons.dart';
import 'package:flutter_application_1/components/variables.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Buttons.squareButton(
                        context,
                        icon: "search",
                        backgroundColors: Vars.secondaryGradient,
                        iconColor: Vars.offWhite,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Settings",
                        backgroundColors: Vars.secondaryGradient,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "RightArrow",
                        backgroundColors: Vars.secondaryGradient,
                        iconColor: Colors.white,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Reload",
                        backgroundColors: Vars.secondaryGradient,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Notifications",
                        backgroundColors: Vars.secondaryGradient,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "History",
                        backgroundColors: Vars.secondaryGradient,
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
                      Buttons.squareButton(
                        context,
                        icon: "QuestionMark",
                        backgroundColors: Vars.secondaryGradient,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Right",
                        backgroundColors: Vars.secondaryGradient,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Left",
                        backgroundColors: Vars.secondaryGradient,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Money",
                        backgroundColors: Vars.secondaryGradient,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Home",
                        backgroundColors: Vars.secondaryGradient,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Contact",
                        backgroundColors: Vars.secondaryGradient,
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
                      Buttons.squareButton(
                        context,
                        icon: "Trash",
                        backgroundColors: Vars.secondaryGradient,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Whatsapp",
                        backgroundColors: Vars.secondaryGradient,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Phone",
                        backgroundColors: Vars.secondaryGradient,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Copasa",
                        backgroundColors: Vars.secondaryGradient,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Exit",
                        backgroundColors: Vars.secondaryGradient,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Edit",
                        backgroundColors: Vars.secondaryGradient,
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
                      Buttons.squareButton(
                        context,
                        icon: "User",
                        backgroundColors: Vars.secondaryGradient,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "CheckMark",
                        backgroundColors: Vars.secondaryGradient,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "aaaa",
                        backgroundColors: Vars.secondaryGradient,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 20,
              height: 20,
            ),
            Container(
              color: Color.fromARGB(255, 92, 190, 191),
              child: Column(
                children: [
                  SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Buttons.squareButton(
                        context,
                        icon: "Search",
                        backgroundColors: [Vars.offWhite, Vars.offWhite],
                        iconColor: Vars.secondary,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Settings",
                        backgroundColors: [Vars.offWhite, Vars.offWhite],
                        iconColor: Vars.secondary,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "RightArrow",
                        backgroundColors: [Vars.offWhite, Vars.offWhite],
                        iconColor: Vars.secondary,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Reload",
                        backgroundColors: [Vars.offWhite, Vars.offWhite],
                        iconColor: Vars.secondary,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Notifications",
                        backgroundColors: [Vars.offWhite, Vars.offWhite],
                        iconColor: Vars.secondary,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "History",
                        backgroundColors: [Vars.offWhite, Vars.offWhite],
                        iconColor: Vars.secondary,
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
                      Buttons.squareButton(
                        context,
                        icon: "QuestionMark",
                        backgroundColors: [Vars.offWhite, Vars.offWhite],
                        iconColor: Vars.secondary,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Right",
                        backgroundColors: [Vars.offWhite, Vars.offWhite],
                        iconColor: Vars.secondary,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Left",
                        backgroundColors: [Vars.offWhite, Vars.offWhite],
                        iconColor: Vars.secondary,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Money",
                        backgroundColors: [Vars.offWhite, Vars.offWhite],
                        iconColor: Vars.secondary,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Home",
                        backgroundColors: [Vars.offWhite, Vars.offWhite],
                        iconColor: Vars.secondary,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Contact",
                        backgroundColors: [Vars.offWhite, Vars.offWhite],
                        iconColor: Vars.secondary,
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
                      Buttons.squareButton(
                        context,
                        icon: "Trash",
                        backgroundColors: [Vars.offWhite, Vars.offWhite],
                        iconColor: Vars.secondary,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Whatsapp",
                        backgroundColors: [Vars.offWhite, Vars.offWhite],
                        iconColor: Vars.secondary,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Phone",
                        backgroundColors: [Vars.offWhite, Vars.offWhite],
                        iconColor: Vars.secondary,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Copasa",
                        backgroundColors: [Vars.offWhite, Vars.offWhite],
                        iconColor: Vars.secondary,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Exit",
                        backgroundColors: [Vars.offWhite, Vars.offWhite],
                        iconColor: Vars.secondary,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "Edit",
                        backgroundColors: [Vars.offWhite, Vars.offWhite],
                        iconColor: Vars.secondary,
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
                      Buttons.squareButton(
                        context,
                        icon: "User",
                        backgroundColors: [Vars.offWhite, Vars.offWhite],
                        iconColor: Vars.secondary,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "CheckMark",
                        backgroundColors: [Vars.offWhite, Vars.offWhite],
                        iconColor: Vars.secondary,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Buttons.squareButton(
                        context,
                        icon: "aaaa",
                        backgroundColors: [Vars.offWhite, Vars.offWhite],
                        iconColor: Vars.secondary,
                        function: () {
                          print("Voce clicou no botão");
                        },
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
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
