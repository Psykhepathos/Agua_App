import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/buttons.dart';
import 'package:flutter_application_1/components/chart.dart';
import 'package:flutter_application_1/components/register_form.dart';
import 'package:flutter_application_1/components/register_list.dart';
import 'package:flutter_application_1/components/variables.dart';

import 'package:flutter_application_1/models/registers.dart';
import 'dart:math';
import '/models/registers.dart';
import '/components/register_form.dart';
import '/components/register_list.dart';
import '/components/chart.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({Key? key}) : super(key: key);

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  final _registers = [
    Register(
        id: 'r1',
        leitura: 00000010,
        litros: 10,
        date: DateTime.now().subtract(Duration(days: 3))),
    Register(
        id: 'r2',
        leitura: 00000100,
        litros: 100,
        date: DateTime.now().subtract(Duration(days: 4))),
  ];

  _openregisterFormModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return RegisterForm(_addRegister);
        });
  }

  _addRegister(int leitura) {
    var litros = leitura - _registers.elementAt(_registers.length - 1).leitura;
    final newRegister = Register(
        id: Random().nextDouble().toString(),
        leitura: leitura,
        litros: litros,
        date: DateTime.now());

    setState(
      () {
        _registers.add(newRegister);
      },
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: false,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(32.0), // here the desired height
            child: AppBar(
              elevation: 0,
              backgroundColor: const Color.fromRGBO(92, 190, 191, 1),

              // ...
            )),
        body: SingleChildScrollView(
          child: Stack(children: <Widget>[
            Container(
              height: 285,
              color: const Color.fromRGBO(92, 190, 191, 1),
            ),
            Column(
              children: [
                Center(
                  child: SizedBox(height: 260, child: Chart(_registers)),
                ),
                Stack(children: <Widget>[
                  const SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: SizedBox(
                      height: 50,
                      width: 350,
                      child: TextField(
                        onChanged: (text) {},
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'Buscar',
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.grey, width: 0.0),
                              borderRadius: BorderRadius.circular(15)),
                          fillColor: Colors.white,
                          filled: true,
                          suffixIcon: Container(
                            width: 40,
                            height: 60,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(255, 149, 149, 1),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomRight: Radius.circular(15))),
                            child: IconButton(
                              color: Colors.white,
                              icon: const Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                    ),
                    // Este é o botão de pular de tela, usei tela nomeavel pois terão varias outras telas.
                    onPressed: () => _openregisterFormModal(context),
                    child: const Text('Novo Registro'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '           Ultimos Registros',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
                Container(
                    height: 289,
                    alignment: Alignment.topCenter,
                    child: RegisterList(_registers)),
              ],
            ),
          ]),
        ),
        bottomNavigationBar: SafeArea(
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Color.fromRGBO(92, 190, 191, 1),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.attach_money),
                label: 'Financeiro',
                backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline),
                label: 'Contato',
                backgroundColor: Colors.purple,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'Histórico',
                backgroundColor: Colors.pink,
              ),
            ],
            selectedItemColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
