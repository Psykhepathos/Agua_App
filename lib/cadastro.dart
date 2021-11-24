import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
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
                                Navigator.of(context).pushReplacementNamed('/');
                              });
                            },
                            child: const Text(
                              '<  Cadastro',
                              style: TextStyle(fontSize: 25),
                            ))
                      ],
                    ),
                    // A colocar a logo do app
                    Container(
                      color: Colors.white,
                      height: 1,
                      width: 400,
                    ),
                    const SizedBox(
                      height: 5,
                      width: 5,
                    ), // Fields de texto
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
                            onChanged: (text) {},
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                labelText: 'Nome',
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
                            onChanged: (text) {},
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                labelText: 'CPF',
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
                            onChanged: (text) {},
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                labelText: 'Telefone',
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
                    Container(
                      color: Colors.white,
                      height: 1,
                      width: 400,
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
                            onChanged: (text) {},
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                labelText: 'CEP',
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
                            onChanged: (text) {},
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                labelText: 'Endereço',
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
                      height: 8,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 8,
                        ),
                        SizedBox(
                          height: 50,
                          width: 70,
                          child: Material(
                            borderRadius: BorderRadius.circular(15),
                            elevation: 20.0,
                            shadowColor: Colors.blue[50],
                            child: TextField(
                              onChanged: (text) {},
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  labelText: 'Nº',
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
                        const SizedBox(
                          height: 50,
                          width: 10,
                        ),
                        SizedBox(
                          height: 50,
                          width: 300,
                          child: Material(
                            borderRadius: BorderRadius.circular(15),
                            elevation: 20.0,
                            shadowColor: Colors.blue[50],
                            child: TextField(
                              onChanged: (text) {},
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  labelText: 'Complemento',
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
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 8,
                        ),
                        SizedBox(
                          height: 50,
                          width: 150,
                          child: Material(
                            borderRadius: BorderRadius.circular(15),
                            elevation: 20.0,
                            shadowColor: Colors.blue[50],
                            child: TextField(
                              onChanged: (text) {},
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  labelText: 'Estado',
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
                        const SizedBox(
                          height: 50,
                          width: 10,
                        ),
                        SizedBox(
                          height: 50,
                          width: 220,
                          child: Material(
                            borderRadius: BorderRadius.circular(15),
                            elevation: 20.0,
                            shadowColor: Colors.blue[50],
                            child: TextField(
                              onChanged: (text) {},
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  labelText: 'Cidade',
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
                      ],
                    ),

                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      color: Colors.white,
                      height: 1,
                      width: 400,
                    ),
                    const SizedBox(
                      height: 8,
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
                            onChanged: (text) {},
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                labelText: 'Meta de Consumo Mensal',
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
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(
                      height: 50,
                      width: 500,
                      child: ElevatedButton(
                        // Este é o botão de pular de tela, usei tela nomeavel pois terão varias outras telas.
                        onPressed: () {},
                        child: const Text('Cadastrar'),
                      ),
                    )
                  ],
                ),
              )),
        ));
  }
}
