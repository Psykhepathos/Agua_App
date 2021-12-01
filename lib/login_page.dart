import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/components/buttons.dart';
import 'package:flutter_application_1/components/form_fields.dart';
import 'package:flutter_application_1/components/variables.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromRGBO(92, 190, 191, 1),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    width: 350,
                    height: 350,
                    child: Image.asset('assets/images/tambasa.png'),
                  ),
                  FormFields.textFormField(
                    context,
                    TextEditingController(),
                    hint: "E-mail",
                    onChanged: (text) {},
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 60,
                  ),
                  FormFields.sendTextFormField(
                    context,
                    TextEditingController(),
                    icon: "RightArrow",
                    onChanged: (text) {},
                    obscure: true,
                    hint: "Senha",
                    buttonFunction: () {
                      Navigator.of(context)
                          .pushReplacementNamed('/pagina_principal');
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 60,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 200),
                    child: Buttons.largeButton(
                      context,
                      colors: [
                        Vars.primary,
                        Vars.primary,
                      ],
                      function: () {
                        setState(() {
                          Navigator.of(context)
                              .pushReplacementNamed('/esqueci_senha');
                        });
                      },
                      texto: 'Esqueci a senha >',
                      textColor: Colors.white,
                      textSize: 1,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 75),
                    child: Buttons.largeButton(context,
                        colors: Vars.secondaryGradient,
                        texto: 'CADASTRAR', function: () {
                      setState(
                        () {
                          Navigator.of(context)
                              .pushReplacementNamed('/cadastro');
                        },
                      );
                    }),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
