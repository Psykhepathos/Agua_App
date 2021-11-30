import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_application_1/models/registers.dart';
import 'package:intl/intl.dart';
import 'package:flutter_application_1/pagina_principal.dart';
import 'package:intl/date_symbol_data_local.dart';

String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

class Chart extends StatelessWidget {
  final List<Register> recentRegister;
  const Chart({Key? key, required this.recentRegister}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<charts.Series<Register, String>> series = [
      charts.Series(
        id: 'Litros',
        data: recentRegister,
        domainFn: (Register series, _) =>
            capitalize(DateFormat('EEE', 'pt_BR').format(series.date)),
        measureFn: (Register series, _) => series.litros,
        colorFn: (_, __) => charts.MaterialPalette.white,
        outsideLabelStyleAccessorFn: (_, __) {
          return charts.TextStyleSpec(color: charts.MaterialPalette.white);
        },
        labelAccessorFn: (Register series, _) =>
            '${series.leitura.toString()}L',
      ),
    ];

    return charts.BarChart(
      series,
      animate: true,
      barRendererDecorator: charts.BarLabelDecorator<String>(
          labelPosition: charts.BarLabelPosition.outside),
      domainAxis: charts.OrdinalAxisSpec(
          showAxisLine: false,
          renderSpec: charts.SmallTickRendererSpec(
              labelStyle:
                  charts.TextStyleSpec(color: charts.MaterialPalette.white))),
      primaryMeasureAxis: charts.NumericAxisSpec(
        showAxisLine: false,
        renderSpec: charts.NoneRenderSpec(),
      ),
    );
  }
}
