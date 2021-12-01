import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import 'components/buttons.dart';
import 'components/variables.dart';

class EsqueciSenha extends StatefulWidget {
  const EsqueciSenha({Key? key}) : super(key: key);

  @override
  State<EsqueciSenha> createState() => _EsqueciSenhaState();
}

class _EsqueciSenhaState extends State<EsqueciSenha> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromRGBO(92, 190, 191, 1),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 200),
                  child: Buttons.largeButton(
                    context,
                    colors: [
                      Vars.primary,
                      Vars.primary,
                    ],
                    function: () {
                      setState(() {
                        Navigator.of(context)
                            .pushReplacementNamed('/login_page');
                      });
                    },
                    texto: '<  Alterar senha',
                    textColor: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  width: 350,
                  height: 350,
                  child: Image.asset('assets/images/tambasa.png'),
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 7, left: 13),
                      height: 50,
                      width: 293,
                      child: TextField(
                        onChanged: (text) {},
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            labelText: 'CPF ou E-mail',
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(255, 149, 149, 1),
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 0.0),
                                borderRadius: BorderRadius.circular(15)),
                            fillColor: Colors.white,
                            filled: true),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Buttons.squareButton(
                        context,
                        icon: "Reload",
                        backgroundColors: [Vars.offWhite, Vars.offWhite],
                        iconColor: Vars.secondary,
                        function: () {},
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 50,
                  width: 350,
                  child: TextField(
                    enabled: false,
                    onChanged: (text) {},
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelText: 'Código',
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(255, 149, 149, 1),
                              width: 2.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 0.0),
                            borderRadius: BorderRadius.circular(15)),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 50,
                  width: 350,
                  child: TextField(
                    enabled: false,
                    onChanged: (text) {},
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelText: 'Nova Senha',
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(255, 149, 149, 1),
                              width: 2.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 0.0),
                            borderRadius: BorderRadius.circular(15)),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 70),
                  height: 50,
                  width: 350,
                  child: TextField(
                    enabled: false,
                    onChanged: (text) {},
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelText: 'Confirme a senha',
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(255, 149, 149, 1),
                              width: 2.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 0.0),
                            borderRadius: BorderRadius.circular(15)),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                ),
                Buttons.largeButton(context,
                    colors: Vars.secondaryGradient,
                    texto: 'Atualizar',
                    width: 350, function: () {
                  setState(
                    () {
                      Navigator.of(context).pushReplacementNamed('/cadastro');
                    },
                  );
                })
              ],
            ),
          )),
    );
  }
}
