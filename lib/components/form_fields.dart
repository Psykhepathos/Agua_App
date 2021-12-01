import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/variables.dart';

class FormFields {
  static Widget textFormField(
    context,
    TextEditingController controller, {
    TextInputType keyboardType = TextInputType.text,
    Function(String)? onChanged,
    Function(String)? onSubmited,
    TextInputAction textInputAction = TextInputAction.next,
    String hint = "Type here",
    double width = 0,
    Color backgroundColor = Colors.white,
    Color textColor = Vars.activeText,
    bool obscure = false,
    int maxLenght = 0,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height / 16.83636,
      width: (width == 0) ? MediaQuery.of(context).size.width / 1.17582 : width,
      child: TextFormField(
        maxLength: (maxLenght == 0) ? null : maxLenght,
        controller: controller,
        onChanged: onChanged,
        onFieldSubmitted: onSubmited,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        obscureText: obscure,
        style: TextStyle(
          fontSize: 16,
          color: textColor,
          fontWeight: FontWeight.normal,
          fontFamily: "Roboto",
        ),
        decoration: InputDecoration(
          counterText: '',
          border: OutlineInputBorder(
            borderRadius: Vars.borderRadius,
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          hintStyle: TextStyle(color: textColor),
          filled: true,
          contentPadding: const EdgeInsets.all(16),
          fillColor: backgroundColor,
          hintText: hint,
        ),
      ),
    );
  }
}
