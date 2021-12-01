import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/buttons.dart';
import 'package:flutter_application_1/components/form_fields.dart';
import 'package:flutter_application_1/components/variables.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromRGBO(92, 190, 191, 1),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 240),
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
                    textSize: 2,
                    texto: '<  Cadastro',
                    textColor: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  width: 300,
                  height: 300,
                  child: Image.asset('assets/images/tambasa.png'),
                ),
                FormFields.textFormField(
                  context,
                  TextEditingController(),
                  hint: "Nome",
                  onChanged: (text) {},
                ),
                SizedBox(
                  height: 10,
                ),
                FormFields.textFormField(
                  context,
                  TextEditingController(),
                  hint: "E-mail",
                  onChanged: (text) {},
                ),
                SizedBox(
                  height: 10,
                ),
                FormFields.textFormField(
                  context,
                  TextEditingController(),
                  hint: "Senha",
                  onChanged: (text) {},
                ),
                SizedBox(
                  height: 10,
                ),
                FormFields.textFormField(
                  context,
                  TextEditingController(),
                  hint: "Confirme a senha",
                  onChanged: (text) {},
                ),
                SizedBox(
                  height: 60,
                ),
                Buttons.largeButton(
                  context,
                  colors: Vars.secondaryGradient,
                  texto: 'Enviar',
                  function: () {
                    setState(
                      () {
                        Navigator.of(context)
                            .pushReplacementNamed('/login_page');
                      },
                    );
                  },
                )
              ],
            ),
          )),
    );
  }
}
