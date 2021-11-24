import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // A ideia é fazer um login no banco de dados com o produtivo do usuario mas para testes vamos deixar tudo constante.
  String produtivo = '15857';
  String senha = 'tambasa';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(92, 190, 191, 1),
        body: SingleChildScrollView(
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // A colocar a logo do app
                    SizedBox(
                      width: 300,
                      height: 300,
                      child: Image.asset('assets/images/tambasa.png'),
                    ),
                    const SizedBox(
                      height: 5,
                      width: 5,
                    ), // Fields de texto
                    Material(
                      borderRadius: BorderRadius.circular(15),
                      elevation: 20.0,
                      shadowColor: Colors.blue[50],
                      child: TextField(
                        onChanged: (text) {
                          produtivo = text;
                        },
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
                    const SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    TextField(
                      onChanged: (text) {
                        senha = text;
                      },
                      // Tudo decoração para ficar mais agradavel
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
                              color: Color.fromRGBO(255, 149, 149, 1),
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
                    const SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          height: 50,
                          width: 150,
                        ),
                        ElevatedButton(
                            style: TextButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(92, 190, 191, 1),
                                elevation: 0,
                                shadowColor: Colors.red),
                            onPressed: () {
                              setState(() {
                                Navigator.of(context)
                                    .pushReplacementNamed('/esqueci_senha');
                              });
                            },
                            child: const Text(
                              'Esqueci a senha >',
                              style: TextStyle(fontSize: 25),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 100,
                      width: 50,
                    ),
                    SizedBox(
                      height: 50,
                      width: 500,
                      child: ElevatedButton(
                        // Este é o botão de pular de tela, usei tela nomeavel pois terão varias outras telas.
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed('/cadastro');
                        },
                        child: const Text('CADASTRAR'),
                      ),
                    )
                  ],
                ),
              )),
        ));
  }
}
