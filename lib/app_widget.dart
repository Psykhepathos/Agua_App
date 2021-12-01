import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cadastro.dart';
import 'package:flutter_application_1/esqueci_senha.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:flutter_application_1/pagina_principal.dart';
import 'package:intl/date_symbol_data_local.dart';
//

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);
  // ignore: override_on_non_overriding_member
  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    initializeDateFormatting('pt_BR', null);
    // ignore: avoid_unnecessary_containers
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData().copyWith(
          // change the focus border color of the TextField
          colorScheme: ThemeData()
              .colorScheme
              .copyWith(primary: const Color.fromRGBO(255, 149, 149, 1)),
          // change the focus border color when the errorText is set
          errorColor: Colors.purple,
        ),
        initialRoute: '/login_page',
        routes: {
          '/login_page': (context) => const LoginPage(),
          '/pagina_principal': (context) => const PaginaPrincipal(),
          '/esqueci_senha': (context) => const EsqueciSenha(),
          '/cadastro': (context) => const Cadastro(),
        });
  }
}
