import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/registers.dart';
import 'package:intl/intl.dart';
import 'chart_bar.dart';

class Chart extends StatelessWidget {
  final List<Register> recentRegister;

  Chart(this.recentRegister);

  List<Map<String, Object>> get groupedRegisters {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(
        Duration(days: index),
      );

      double totalSum = 0.0;

      for (var i = 0; i < recentRegister.length; i++) {
        bool sameDay = recentRegister[i].date.day == weekDay.day;
        bool sameMonth = recentRegister[i].date.month == weekDay.month;
        bool sameYear = recentRegister[i].date.year == weekDay.year;

        if (sameDay && sameMonth && sameYear) {
          totalSum += recentRegister[i].litros;
        }
      }

      return {
        'day': DateFormat('EEE').format(weekDay),
        'litros': totalSum,
      };
    }).reversed.toList();
  }

  double get _weekTotalValue {
    return groupedRegisters.fold(0.0, (sum, rg) {
      return sum + (rg['litros'] as double);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        margin: EdgeInsets.only(left: 60),
        child: Row(
          children: groupedRegisters.map((rg) {
            return Container(
              margin: EdgeInsets.only(right: 5),
              child: ChartBar(
                label: rg['day'].toString(),
                litros: rg['litros'] as double,
                percentage: (rg['litros'] as double) / _weekTotalValue,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
