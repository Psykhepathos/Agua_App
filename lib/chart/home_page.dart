import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/chart/developer_chart.dart';
import 'package:flutter_application_1/chart/subscriber_chart.dart';
import 'package:flutter_application_1/chart/subscriber_series.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_application_1/chart/developer_series.dart';
import 'package:flutter_application_1/chart/teste.dart';
import 'package:flutter_application_1/chart/teste2.dart';
import 'package:flutter_application_1/models/registers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  final List<SubscriberSeries> data = [
    SubscriberSeries(
      year: '2009',
      subscribers: 500,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SubscriberSeries(
      year: '2010',
      subscribers: 700,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SubscriberSeries(
      year: '2011',
      subscribers: 1000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SubscriberSeries(
      year: '2012',
      subscribers: 1500,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SubscriberSeries(
      year: '2013',
      subscribers: 2000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SubscriberSeries(
      year: '2014',
      subscribers: 2700,
      barColor: charts.ColorUtil.fromDartColor(Colors.red),
    ),
  ];

  final List<DeveloperSeries> data2 = [
    DeveloperSeries(
      year: 2017,
      developers: 40000,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    DeveloperSeries(
      year: 2018,
      developers: 5000,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    DeveloperSeries(
      year: 2019,
      developers: 40000,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    DeveloperSeries(
      year: 2020,
      developers: 35000,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    DeveloperSeries(
      year: 2021,
      developers: 45000,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
  ];
  final _registers = [
    Register(
        id: 'r1',
        leitura: 00000010,
        litros: 10,
        date: DateTime.now().subtract(Duration(days: 3))),
    Register(
        id: 'r2',
        leitura: 00000100,
        litros: 100,
        date: DateTime.now().subtract(Duration(days: 4))),
  ];
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 300,
          child: Teste(
            recentRegister: [
              Register(
                  id: 'r1',
                  leitura: 00000010,
                  litros: 10,
                  date: DateTime.now().subtract(Duration(days: 3))),
              Register(
                  id: 'r2',
                  leitura: 00000100,
                  litros: 100,
                  date: DateTime.now().subtract(Duration(days: 4))),
            ],
          ),
        ),
      ),
    );
  }
}
