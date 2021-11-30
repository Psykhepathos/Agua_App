import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String? label;
  final double? litros;
  final double? percentage;

  ChartBar({
    this.label,
    this.litros,
    this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 20,
          child: FittedBox(
            child: Text(
              '${litros?.toStringAsFixed(0)}',
            ),
          ),
        ),
        SizedBox(height: 20),
        Container(
          height: 150,
          width: 25,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              FractionallySizedBox(
                heightFactor: percentage,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Text(label.toString()),
      ],
    );
  }
}
