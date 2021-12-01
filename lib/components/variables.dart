import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Vars {
  static final BorderRadius borderRadius = BorderRadius.circular(13.0);
  static const Color primary = Color.fromARGB(255, 92, 190, 191);
  static const Color primaryDark = Color.fromARGB(255, 84, 167, 168);
  static const Color secondary = Color.fromARGB(255, 255, 149, 149);
  static const Color secondaryDisabled = Color.fromARGB(84, 255, 149, 149);
  static const Color offWhite = Color.fromARGB(255, 250, 250, 250);
  static const Color disabledText = Color.fromARGB(126, 255, 255, 255);
  static const Color activeText = Color.fromARGB(255, 149, 142, 142);
  static const Color disabledTextAlt = Color.fromARGB(126, 174, 174, 174);
  static const Color redText = Color.fromARGB(255, 231, 77, 77);
  static const Color redTextDisabled = Color.fromARGB(125, 255, 0, 0);
  static const Color blackText = Color.fromARGB(255, 39, 39, 39);
  static const Color linkBlue = Color.fromARGB(255, 0, 196, 255);
  static const Color popUpBackground = Color.fromARGB(153, 0, 0, 0);
  static const Color positiveGreen = Color.fromARGB(126, 255, 255, 255);
  static const Color backGroundGrey = Color.fromARGB(255, 234, 234, 234);
  static const Color copasaBlue = Color.fromARGB(255, 24, 99, 156);

  static const List<Color> whatsAppGreen = [
    Color.fromARGB(255, 37, 211, 102),
    Color.fromARGB(255, 0, 214, 80)
  ];
  static const List<Color> secondaryGradient = [
    Color.fromARGB(255, 255, 149, 149),
    Color.fromARGB(255, 255, 113, 113)
  ];

  static double mainHeight(context) {
    return MediaQuery.of(context).size.height / 16.83636;
  }

  static Text textSmaller(
    context, {
    required String text,
    bool isMono = false,
    bool isBold = false,
    Color color = Colors.white,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: isMono ? "Roboto Mono" : "Roboto",
        fontSize: MediaQuery.of(context).size.height / 65,
        fontWeight: (isBold == true) ? FontWeight.bold : FontWeight.normal,
        color: color,
      ),
    );
  }

  static Text textSmall(
    context, {
    required String text,
    bool isMono = false,
    bool isBold = false,
    Color color = Colors.white,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: isMono ? "Roboto Mono" : "Roboto",
        fontSize: MediaQuery.of(context).size.height / 50,
        fontWeight: (isBold == true) ? FontWeight.bold : FontWeight.normal,
        color: color,
      ),
    );
  }

  static Text textMedium(context,
      {required String text,
      bool isMono = false,
      bool isBold = false,
      Color color = Colors.white}) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: isMono ? "Roboto Mono" : "Roboto",
        fontSize: MediaQuery.of(context).size.height / 40,
        fontWeight: (isBold == true) ? FontWeight.bold : FontWeight.normal,
        color: color,
      ),
    );
  }

  static Text textLarge(context,
      {required String text,
      bool isMono = false,
      bool isBold = false,
      Color color = Colors.white}) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: isMono ? "Roboto Mono" : "Roboto",
        fontSize: MediaQuery.of(context).size.height / 30,
        fontWeight: (isBold == true) ? FontWeight.bold : FontWeight.normal,
        color: color,
      ),
    );
  }

  static Icon icon(context, String icon,
      {color = Colors.white, double size = 0}) {
    Map<String, String> names = {
      "Search": "magnify",
      "Settings": "cog-outline",
      "RightArrow": "arrow-right",
      "Reload": "autorenew",
      "Notifications": "bell-outline",
      "History": "History",
      "QuestionMark": "help-circle-outline",
      "Right": "chevron-right",
      "Left": "chevron-left",
      "Money": "currency-usd",
      "Home": "home-outline",
      "Contact": "message-outline",
      "Trash": "Trash-can-outline",
      "Whatsapp": "whatsapp",
      "Phone": "phone",
      "Copasa": "",
      "Exit": "logout-variant",
      "Edit": "pencil-outline",
      "User": "account-outline",
      "CheckMark": "check",
    };
    if (names.containsKey(icon)) {
      if (icon == "RightArrow") {
        return Icon(
          Icons.arrow_right_alt,
          size: (size == 0) ? MediaQuery.of(context).size.height / 35 : size,
          color: color,
        );
      }
      return Icon(
        MdiIcons.fromString(names[icon]!),
        size: (size == 0) ? MediaQuery.of(context).size.height / 35 : size,
        color: color,
      );
    } else {
      return Icon(
        Icons.help_outline,
        size: (size == 0) ? MediaQuery.of(context).size.height / 35 : size,
        color: color,
      );
    }
  }
}
