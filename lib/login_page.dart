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
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 65,
                    width: 350,
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
                    width: 350,
                    height: 60,
                    child: TextField(
                      onChanged: (text) {},
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelText: 'Senha',
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 0.0),
                            borderRadius: BorderRadius.circular(15)),
                        fillColor: Colors.white,
                        filled: true,
                        suffixIcon: Container(
                          width: 100,
                          decoration: const BoxDecoration(
                              color: Vars.secondary,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                              color: Colors.white,
                              icon: const Icon(
                                Icons.send,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacementNamed('/pagina_principal');
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
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
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 150),
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
