import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/chart/chart.dart';
import 'package:flutter_application_1/components/buttons.dart';
import 'package:flutter_application_1/components/register_form.dart';
import 'package:flutter_application_1/components/register_list.dart';
import 'package:flutter_application_1/components/variables.dart';

import 'package:flutter_application_1/models/registers.dart';
import 'dart:math';
import '/models/registers.dart';
import '/components/register_form.dart';
import '/components/register_list.dart';
import 'components/form_fields.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({Key? key}) : super(key: key);

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  List<Register> _sevenRegisters = [];
  @override
  void initState() {
    super.initState;
    _sevenRegisters = _registers
        .where((i) =>
            i.date.day == DateTime.now().day ||
            i.date.day == DateTime.now().subtract(Duration(days: 1)).day ||
            i.date.day == DateTime.now().subtract(Duration(days: 2)).day ||
            i.date.day == DateTime.now().subtract(Duration(days: 3)).day ||
            i.date.day == DateTime.now().subtract(Duration(days: 4)).day ||
            i.date.day == DateTime.now().subtract(Duration(days: 5)).day ||
            i.date.day == DateTime.now().subtract(Duration(days: 6)).day ||
            i.date.day == DateTime.now().subtract(Duration(days: 7)).day)
        .toList();
  }

  void _setarRecenteRegistro() {
    setState(() {
      _sevenRegisters = _registers
          .where((i) =>
              i.date.day == DateTime.now().day ||
              i.date.day == DateTime.now().subtract(Duration(days: 1)).day ||
              i.date.day == DateTime.now().subtract(Duration(days: 2)).day ||
              i.date.day == DateTime.now().subtract(Duration(days: 3)).day ||
              i.date.day == DateTime.now().subtract(Duration(days: 4)).day ||
              i.date.day == DateTime.now().subtract(Duration(days: 5)).day ||
              i.date.day == DateTime.now().subtract(Duration(days: 6)).day)
          .toList();
    });
  }

  final _registers = [
    Register(
      id: 'r1',
      leitura: 00000000,
      litros: 00,
      date: DateTime.now().subtract(Duration(days: 6)),
    ),
    Register(
      id: 'r2',
      leitura: 00000010,
      litros: 10,
      date: DateTime.now().subtract(Duration(days: 5)),
    ),
    Register(
      id: 'r3',
      leitura: 00000100,
      litros: 90,
      date: DateTime.now().subtract(Duration(days: 4)),
    ),
    Register(
      id: 'r4',
      leitura: 00000180,
      litros: 80,
      date: DateTime.now().subtract(Duration(days: 3)),
    ),
    Register(
      id: 'r5',
      leitura: 00000240,
      litros: 60,
      date: DateTime.now().subtract(Duration(days: 2)),
    ),
    Register(
      id: 'r6',
      leitura: 00000330,
      litros: 70,
      date: DateTime.now().subtract(Duration(days: 1)),
    ),
  ];
  _openregisterFormModal(BuildContext context) {
    showDialog(
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
    _setarRecenteRegistro();
    Navigator.of(context).pop();
  }

  _removeRegister(String id) {
    setState(() {
      _registers.removeWhere((rg) => rg.id == id);
      _setarRecenteRegistro();
    });
  }

  List list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    _setarRecenteRegistro;
    _sevenRegisters;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: false,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(MediaQuery.of(context).size.height /
                28), // here the desired height
            child: AppBar(
              elevation: 0,
              backgroundColor: Vars.primary,
              leading: IconButton(
                icon: Vars.icon(context, "Settings"),
                onPressed: () {},
              ),
              flexibleSpace: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: Vars.icon(context, "Notifications"),
                  onPressed: () {},
                ),
              ),
            )),
        body: Container(
          color: Vars.backGroundGrey,
          child: Stack(children: <Widget>[
            Container(
              /*
              child: Column(
                children: [
                  Expanded(
                    child: CarouselSlider(
                      items: list
                          .map((item) => Container(
                                child: Center(child: Text(item.toString())),
                                color: Colors.green,
                              ))
                          .toList(),
                      carouselController: _controller,
                      options: CarouselOptions(
                          autoPlay: false,
                          enlargeCenterPage: false,
                          onPageChanged: (index, reason) {}),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: list.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 12.0,
                          height: 12.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black)
                                  .withOpacity(
                                      _current == entry.key ? 0.9 : 0.4)),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),*/
              height: MediaQuery.of(context).size.height / 3,
              color: Vars.primary,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment(0, -1),
                    child: Center(
                      child: Vars.textMedium(
                        context,
                        text: 'CASA #2',
                        isBold: true,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 35),
                      height: MediaQuery.of(context).size.height / 6,
                      child: Chart(recentRegister: _sevenRegisters),
                    ),
                  ),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height / 18.83636) / 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white70),
                        height: MediaQuery.of(context).size.height / 100,
                        width: MediaQuery.of(context).size.height / 100,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        height: MediaQuery.of(context).size.height / 80,
                        width: MediaQuery.of(context).size.height / 80,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white70),
                        height: MediaQuery.of(context).size.height / 100,
                        width: MediaQuery.of(context).size.height / 100,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: (MediaQuery.of(context).size.height / 3) -
                      (MediaQuery.of(context).size.height / 16.83636) / 2,
                ),
                Stack(children: <Widget>[
                  Center(
                    child: FormFields.sendTextFormField(
                      context,
                      TextEditingController(),
                      icon: "Search",
                      onChanged: (text) {},
                      obscure: false,
                      hint: "Buscar",
                      buttonFunction: () {},
                    ),
                  ),
                ]),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 30,
                ),
                Buttons.largeButton(
                  context,
                  function: () => _openregisterFormModal(context),
                  texto: 'Novo Registro',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 30,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '           Ultimos Registros',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height / 2.67,
                    alignment: Alignment.topCenter,
                    child: RegisterList(_registers, _removeRegister)),
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
                backgroundColor: Vars.primary,
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
