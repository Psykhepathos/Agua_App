
import 'package:flutter/material.dart';
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
    return Card(
        elevation: 5,
        child: Column(
          children: [
            TextField(
              controller: registroController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => _submitForm(),
              decoration: InputDecoration(labelText: 'Registro'),
            ),
            TextButton(
              onPressed: _submitForm,
              child: Text('Registrar'),
            )
          ],
        ));
  }
}
