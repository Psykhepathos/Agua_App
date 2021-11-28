import 'package:flutter/material.dart';

import 'variables.dart';

class Buttons {
  static Widget largeButton(
    context, {
    Function()? function,
    String texto = "Button",
    double width = 0,
    required List<Color> colors,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height / 16.83636,
      width: (width == 0) ? MediaQuery.of(context).size.width / 1.17582 : width,
      decoration: BoxDecoration(
        borderRadius: Vars.borderRadius,
        gradient: const LinearGradient(
          begin: Alignment(0.0, -1.0),
          end: Alignment(0.0, 1.0),
          colors: [
            Color.fromARGB(255, 255, 149, 149),
            Color.fromARGB(255, 255, 113, 113)
          ],
          stops: [0.0, 1.0],
        ),
      ),
      child: ElevatedButton(
        onPressed: function,
        child: Vars.textSmall(text: texto, isBold: true),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
          shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
          ),
        ),
      ),
    );
  }

  static Widget SquareButton(
    context, {
    required String icon,
    required List<Color> colors,
    Function()? function,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height / 16.83636,
      width: MediaQuery.of(context).size.height / 16.83636,
      decoration: BoxDecoration(
        borderRadius: Vars.borderRadius,
        gradient: const LinearGradient(
          begin: Alignment(0.0, -1.0),
          end: Alignment(0.0, 1.0),
          colors: [
            Color.fromARGB(255, 255, 149, 149),
            Color.fromARGB(255, 255, 113, 113)
          ],
          stops: [0.0, 1.0],
        ),
      ),
      child: ElevatedButton(
        onPressed: function,
        child: Vars.icon(icon),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
          shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
        ),
      ),
    );
  }
}