import 'package:flutter/material.dart';
import 'package:flutter_application_1/chart/subscriber_series.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_application_1/models/registers.dart';
import '/chart/subscriber_series.dart';

class Teste extends StatelessWidget {
  final List<Register> recentRegister;
  Teste({required this.recentRegister});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<Register, String>> series = [
      charts.Series(
          id: 'Subscribers',
          data: recentRegister,
          domainFn: (Register series, _) => series.date.toString(),
          measureFn: (Register series, _) => series.litros,
          labelAccessorFn: (Register series, _) =>
              '\$${series.leitura.toString()}'),
    ];

    return charts.BarChart(
      series,
      animate: true,
      barRendererDecorator: new charts.BarLabelDecorator<String>(),
      domainAxis: new charts.OrdinalAxisSpec(),
      primaryMeasureAxis: charts.NumericAxisSpec(
        renderSpec: charts.NoneRenderSpec(),
      ),
    );
  }
}
