/// Vertical bar chart with bar label renderer example.
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import '/components/chart.dart';

class VerticalBarLabelChart extends StatelessWidget {
  final List<charts.Series<dynamic, String>> seriesList;
  final bool animate;

  VerticalBarLabelChart(this.seriesList, {this.animate = true});
  factory VerticalBarLabelChart.withSampleData() {
    return new VerticalBarLabelChart(
      _createSampleData(),
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      animate: animate,
      primaryMeasureAxis: charts.NumericAxisSpec(
        renderSpec: charts.NoneRenderSpec(),
      ),
      barRendererDecorator: new charts.BarLabelDecorator<String>(
          labelPosition: charts.BarLabelPosition.outside),
      domainAxis: new charts.OrdinalAxisSpec(),
    );
  }

  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      new OrdinalSales('2014', 5),
      new OrdinalSales('2015', 25),
      new OrdinalSales('2016', 100),
      new OrdinalSales('2017', 75),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Sales',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
        labelAccessorFn: (OrdinalSales sales, _) =>
            '\$${sales.sales.toString()}',
      )
    ];
  }
}

class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}
