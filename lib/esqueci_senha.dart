import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

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
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ElevatedButton(
                              style: TextButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(92, 190, 191, 1),
                                  elevation: 0,
                                  shadowColor: Colors.red),
                              onPressed: () {
                                setState(() {
                                  Navigator.of(context)
                                      .pushReplacementNamed('/');
                                });
                              },
                              child: const Text(
                                '<   Recuperação de senha',
                                style: TextStyle(fontSize: 25),
                              ))
                        ],
                      ),
                     
                      SizedBox(
                        width: 300,
                        height: 300,
                        child: Image.asset('assets/images/tambasa.png'),
                      ),
                      const SizedBox(
                        height: 5,
                        width: 5,
                      ), 
                      Row(
                        children: [
                          const SizedBox(
                            width: 8,
                          ),
                          SizedBox(
                            height: 50,
                            width: 320,
                            child: Material(
                              borderRadius: BorderRadius.circular(15),
                              elevation: 20.0,
                              shadowColor: Colors.blue[50],
                              child: TextField(
                                onChanged: (text) {},
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    labelText: 'CPF ou E-mail',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color:
                                              Color.fromRGBO(255, 149, 149, 1),
                                          width: 2.0),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.grey, width: 0.0),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    fillColor: Colors.white,
                                    filled: true),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                            width: 10,
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    topLeft: Radius.circular(20))),
                            child: IconButton(
                              color: Colors.white,
                              icon: const Icon(
                                Icons.sync,
                                color: Color.fromRGBO(255, 149, 149, 1),
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 50,
                          width: 400,
                          child: Material(
                            borderRadius: BorderRadius.circular(15),
                            elevation: 20.0,
                            shadowColor: Colors.blue[50],
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
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 50,
                          width: 400,
                          child: Material(
                            borderRadius: BorderRadius.circular(15),
                            elevation: 20.0,
                            shadowColor: Colors.blue[50],
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
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 50,
                          width: 400,
                          child: Material(
                            borderRadius: BorderRadius.circular(15),
                            elevation: 20.0,
                            shadowColor: Colors.blue[50],
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
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                        width: 20,
                      ),
                      SizedBox(
                        height: 50,
                        width: 500,
                        child: ElevatedButton(
                          // Este é o botão de pular de tela, usei tela nomeavel pois terão varias outras telas.
                          onPressed: () {},
                          child: const Text('Atualizar'),
                        ),
                      )
                    ],
                  ),
                )),
          )),
    );
  }
}
