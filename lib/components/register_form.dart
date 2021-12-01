import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/buttons.dart';
import 'package:flutter_application_1/components/form_fields.dart';
import 'package:flutter_application_1/components/variables.dart';
import '/components/register_form.dart';
import '/components/register_list.dart';

class RegisterForm extends StatefulWidget {
  final void Function(int) onSubmit;

  RegisterForm(this.onSubmit);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registroController = TextEditingController();

  final litrosController = TextEditingController();

  _submitForm() {
    final registro = int.tryParse(registroController.text) ?? 0;
    if (registro <= 0) {
      return;
    }

    widget.onSubmit(registro);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: Vars.borderRadius),
      title: Align(
        alignment: const Alignment(-0.9, 0),
        child: Vars.textMedium(context,
            text: "Registro de Leitura", color: Vars.activeText),
      ),
      backgroundColor: Vars.backGroundGrey,
      insetPadding: EdgeInsets.all((MediaQuery.of(context).size.height -
              MediaQuery.of(context).size.height / 1.09184) /
          3),
      contentPadding:
          EdgeInsets.all(MediaQuery.of(context).size.height / 30.57143),
      content: Container(
        height: MediaQuery.of(context).size.height / 6,
        color: Vars.backGroundGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FormFields.textFormField(
              context,
              registroController,
              hint: "Registro",
              onSubmited: (_) => _submitForm(),
              keyboardType: TextInputType.number,
              maxLenght: 8,
            ),
            Buttons.largeButton(
              context,
              texto: "Registrar",
              function: _submitForm,
            ),
          ],
        ),
      ),
    );
  }
}
