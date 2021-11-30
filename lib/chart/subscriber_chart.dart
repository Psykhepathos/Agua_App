import 'package:flutter/material.dart';
import 'package:flutter_application_1/chart/subscriber_series.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '/chart/subscriber_series.dart';

class SubscriberChart extends StatelessWidget {
  final List<SubscriberSeries> data;

  SubscriberChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<SubscriberSeries, String>> series = [
      charts.Series(
          id: 'Subscribers',
          data: data,
          domainFn: (SubscriberSeries series, _) => series.year,
          measureFn: (SubscriberSeries series, _) => series.subscribers,
          colorFn: (SubscriberSeries series, _) => series.barColor,
          labelAccessorFn: (SubscriberSeries series, _) =>
              '\$${series.subscribers.toString()}'),
    ];

    return charts.BarChart(
      series,
      animate: true,
      barRendererDecorator: new charts.BarLabelDecorator<String>(),
      domainAxis: new charts.OrdinalAxisSpec(),
    );
  }
}
