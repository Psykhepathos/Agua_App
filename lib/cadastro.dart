import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/buttons.dart';
import 'package:flutter_application_1/components/form_fields.dart';
import 'package:flutter_application_1/components/variables.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'models/auth.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  Map<String, String> _authData = {
    'email': '',
    'password': '',
  };
  Future<void> _submit() async {
    final isValid = _formKey.currentState?.validate() ?? false;

    if (!isValid) {
      return;
    }

    setState(() => _isLoading = true);

    _formKey.currentState?.save();

    // Registrar
    await Auth().signup(
      _authData['email']!,
      _authData['password']!,
    );

    setState(() => _isLoading = false);
  }

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
                    onPressed: () {
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
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(labelText: 'E-mail'),
                keyboardType: TextInputType.emailAddress,
                onSaved: (email) => _authData['email'] = email ?? '',
                validator: (_email) {
                  final email = _email ?? '';
                  if (email.trim().isEmpty || !email.contains('@')) {
                    return 'Informe um e-mail válido.';
                  }
                  return null;
                },
              ),
                SizedBox(
                  height: 10,
                ),
                FormFields.textFormField(
                  context,
                  obscure: true,
                  hint: "Senha",
                  onSubmited: (password) => _authData['password'] = password,
                  validator: (_password) {
                    final password = _password ?? '';
                    if (password.isEmpty || password.length < 5) {
                      return 'Informe uma senha valida.';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(labelText: 'Senha'),
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                controller: _passwordController,
                onSaved: (password) => _authData['password'] = password ?? '',
                validator: (_password) {
                  final password = _password ?? '';
                  if (password.isEmpty || password.length < 5) {
                    return 'Informe uma senha válida';
                  }
                  return null;
                },
              ),
                SizedBox(
                  height: 60,
                ),
                if (_isLoading)
                  CircularProgressIndicator()
                else
                  Buttons.largeButton(
                    context,
                    colors: Vars.secondaryGradient,
                    texto: 'Enviar',
                    onPressed: () {
                      _submit();
                    },
                  )
              ],
            ),
          )),
    );
  }
}
