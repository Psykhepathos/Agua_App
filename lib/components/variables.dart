import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Vars {
  static final BorderRadius borderRadius = BorderRadius.circular(13.0);

  static Text textSmall({
    required String text,
    bool isMono = false,
    bool isBold = false,
    Color color = Colors.white,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: isMono ? "Roboto Mono" : "Roboto",
        fontSize: 18,
        fontWeight: (isBold == true) ? FontWeight.bold : FontWeight.normal,
        color: color,
      ),
    );
  }

  static Text textMedium(
      {required String text,
      bool isMono = false,
      bool isBold = false,
      Color color = Colors.white}) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: isMono ? "Roboto Mono" : "Roboto",
        fontSize: 24,
        fontWeight: (isBold == true) ? FontWeight.bold : FontWeight.normal,
        color: color,
      ),
    );
  }

  static Text textLarge(
      {required String text,
      bool isMono = false,
      bool isBold = false,
      Color color = Colors.white}) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: isMono ? "Roboto Mono" : "Roboto",
        fontSize: 28,
        fontWeight: (isBold == true) ? FontWeight.bold : FontWeight.normal,
        color: color,
      ),
    );
  }

  static Icon icon(String icon) {
    switch (icon) {
      case ("Search"):
        return Icon(Icons.search);
      case ("Settings"):
        return Icon(Icons.settings_outlined);

      case ("RightArrow"):
        return Icon(Icons.arrow_right_alt);

      case ("Reload"):
        return Icon(Icons.autorenew_outlined);

      case ("Notifications"):
        return Icon(Icons.notifications_outlined);

      case ("History"):
        return Icon(Icons.history_outlined);

      case ("QuestionMark"):
        return Icon(Icons.help_outline_outlined);

      case ("Right"):
        return Icon(Icons.navigate_next_outlined);

      case ("Left"):
        return Icon(Icons.navigate_before_outlined);

      case ("Money"):
        return Icon(Icons.attach_money_outlined);

      case ("Home"):
        return Icon(Icons.home_outlined);

      case ("Contact"):
        return Icon(Icons.chat_bubble_outline_outlined);

      case ("Trash"):
        return Icon(Icons.delete_outlined);

      case ("Whatsapp"):
        return Icon(MdiIcons.whatsapp);

      case ("Phone"):
        return Icon(Icons.phone_outlined);

      case ("Copasa"):
        return Icon(Icons.search);

      case ("Exit"):
        return Icon(Icons.logout_outlined);

      case ("Edit"):
        return Icon(Icons.edit_outlined);

      case ("User"):
        return Icon(Icons.account_circle_outlined);

      case ("CheckMark"):
        return Icon(Icons.check_outlined);

      default:
        return Icon(Icons.help_outlined);
    }
  }
}
