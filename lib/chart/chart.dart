import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_application_1/models/registers.dart';
import 'package:intl/intl.dart';
import 'package:flutter_application_1/pagina_principal.dart';

class Teste extends StatelessWidget {
  final List<Register> recentRegister;
  Teste({required this.recentRegister});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<Register, String>> series = [
      charts.Series(
          id: 'Litros',
          data: recentRegister,
          domainFn: (Register series, _) =>
              DateFormat('EEE').format(series.date),
          measureFn: (Register series, _) => series.litros,
          labelAccessorFn: (Register series, _) =>
              '${series.leitura.toString()}L'),
    ];

    return charts.BarChart(
      series,
      animate: true,
      barRendererDecorator: new charts.BarLabelDecorator<String>(
          labelPosition: charts.BarLabelPosition.outside),
      domainAxis: new charts.OrdinalAxisSpec(),
      primaryMeasureAxis: charts.NumericAxisSpec(
        renderSpec: charts.NoneRenderSpec(),
      ),
    );
  }
}
