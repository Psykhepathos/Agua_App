import 'package:flutter/material.dart';
import 'package:flutter_application_1/chart/developer_series.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DeveloperChart extends StatelessWidget {
  final List<DeveloperSeries> data;

  DeveloperChart({required this.data});
  @override
  Widget build(BuildContext context) {
    List<charts.Series<DeveloperSeries, String>> series = [
      charts.Series(
          id: "developers",
          data: data,
          domainFn: (DeveloperSeries series, _) => series.year.toString(),
          measureFn: (DeveloperSeries series, _) => series.developers,
          colorFn: (DeveloperSeries series, _) => series.barColor)
    ];

    return charts.BarChart(
      series,
      animate: true,
      barRendererDecorator: new charts.BarLabelDecorator<String>(),
      domainAxis: new charts.OrdinalAxisSpec(),
    );
  }
}
