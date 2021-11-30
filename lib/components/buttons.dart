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

  static Widget doubleButton(
    context, {
    int selected = 1,
    required Function()? button1,
    required Function()? button2,
  }) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height / 21.53488,
        width: MediaQuery.of(context).size.width / 1.17582,
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 21.53488,
              width: (MediaQuery.of(context).size.width / 1.17582) / 2,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(13),
                  bottomLeft: Radius.circular(13),
                ),
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0),
                  end: Alignment(0.0, 1.0),
                  colors: (selected == 1)
                      ? Vars.secondaryGradient
                      : [Vars.offWhite, Vars.offWhite],
                  stops: const [0.0, 1.0],
                ),
              ),
              child: ElevatedButton(
                onPressed: button1,
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  padding: EdgeInsets.zero,
                  shadowColor: Colors.transparent,
                ),
                child: Container(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 21.53488,
                    width: (MediaQuery.of(context).size.width / 1.17582) / 2,
                    child: Center(
                      child: Vars.textSmall(
                        text: "Mensal",
                        color:
                            (selected == 1 ? Vars.offWhite : Vars.activeText),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 21.53488,
              width: (MediaQuery.of(context).size.width / 1.17582) / 2,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(13),
                  bottomRight: Radius.circular(13),
                ),
                gradient: LinearGradient(
                  begin: const Alignment(0.0, -1.0),
                  end: const Alignment(0.0, 1.0),
                  colors: (selected == 2)
                      ? Vars.secondaryGradient
                      : [Vars.offWhite, Vars.offWhite],
                  stops: const [0.0, 1.0],
                ),
              ),
              child: ElevatedButton(
                onPressed: button2,
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  padding: EdgeInsets.zero,
                  shadowColor: Colors.transparent,
                ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 21.53488,
                  width: (MediaQuery.of(context).size.width / 1.17582) / 2,
                  child: Center(
                    child: Vars.textSmall(
                      text: "Diário",
                      color: (selected == 2 ? Vars.offWhite : Vars.activeText),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
