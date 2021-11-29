import 'package:flutter/material.dart';

import 'variables.dart';

class Buttons {
  static Widget largeButton(
    context, {
    Function()? function,
    String texto = "Button",
    double width = 0,
    Color textColor = Colors.white,
    required List<Color> colors,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height / 16.83636,
      width: (width == 0) ? MediaQuery.of(context).size.width / 1.17582 : width,
      decoration: BoxDecoration(
        borderRadius: Vars.borderRadius,
        gradient: LinearGradient(
          begin: Alignment(0.0, -1.0),
          end: Alignment(0.0, 1.0),
          colors: colors,
          stops: [0.0, 1.0],
        ),
      ),
      child: ElevatedButton(
        onPressed: function,
        child: Vars.textSmall(text: texto, isBold: true, color: textColor),
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

  static Widget squareButton(
    context, {
    required String icon,
    List<Color> backgroundColors = const [Color.fromARGB(255, 255, 149, 149)],
    iconColor = Colors.white,
    Function()? function,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height / 16.83636,
      width: MediaQuery.of(context).size.height / 16.83636,
      decoration: BoxDecoration(
        borderRadius: Vars.borderRadius,
        gradient: LinearGradient(
          begin: Alignment(0.0, -1.0),
          end: Alignment(0.0, 1.0),
          colors: backgroundColors,
          stops: [0.0, 1.0],
        ),
      ),
      child: ElevatedButton(
        onPressed: function,
        child: Vars.icon(icon, color: iconColor),
        style: ButtonStyle(
          padding:
              MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: Vars.borderRadius,
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
          shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
        ),
      ),
    );
  }

  static Widget largeIconButton(
    context, {
    Function()? function,
    String texto = "Button",
    String icon = "CheckMark",
    Color iconColor = Colors.white,
    double width = 0,
    Color textColor = Colors.white,
    required List<Color> colors,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height / 16.83636,
      width: (width == 0) ? MediaQuery.of(context).size.width / 1.17582 : width,
      decoration: BoxDecoration(
        borderRadius: Vars.borderRadius,
        gradient: LinearGradient(
          begin: Alignment(0.0, -1.0),
          end: Alignment(0.0, 1.0),
          colors: colors,
        ),
      ),
      child: ElevatedButton(
        onPressed: function,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Vars.icon(icon, color: iconColor),
            SizedBox(
              width: 10,
            ),
            Vars.textSmall(text: texto, isBold: true, color: textColor),
          ],
        ),
        style: ButtonStyle(
          padding:
              MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
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
}
