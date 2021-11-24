import 'package:flutter/material.dart';
import '/models/registers.dart';
import 'package:intl/intl.dart';

class RegisterList extends StatelessWidget {
  final List<Register> registers;

  RegisterList(this.registers);

  ScrollController _scrollController = ScrollController();

  _scrollToBottom() {
    _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) => _scrollToBottom());
    return SizedBox(
      height: 500,
      width: 350,
      child: ListView.builder(
        itemCount: registers.length,
        controller: _scrollController,
        reverse: true,
        shrinkWrap: true,
        itemBuilder: (_, index) {
          final rg = registers[index];
          return Card(
            elevation: 3,
            child: Container(
              width: 350,
              child: Row(
                children: [
                  Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromRGBO(84, 167, 168, 1)),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          DateFormat('EEE').format(rg.date),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 36),
                            child: Text(
                              DateFormat('d/M/y').format(rg.date),
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text('Leitura:'),
                              Container(
                                  child: Text.rich(TextSpan(
                                      text: rg.leitura
                                          .toString()
                                          .padLeft(8, '0')
                                          .substring(0, 4),
                                      children: <TextSpan>[
                                    TextSpan(
                                        text: rg.leitura
                                            .toString()
                                            .padLeft(9, '0')
                                            .substring(5, 9),
                                        style: TextStyle(
                                          color: const Color.fromRGBO(
                                              255, 149, 149, 1),
                                        ))
                                  ]))),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 45, bottom: 15),
                    child: Column(
                      children: [
                        Container(
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 40,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete_forever_rounded,
                                color: Color.fromRGBO(255, 149, 149, 1),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '${rg.litros.toString()} Litros',
                          textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
