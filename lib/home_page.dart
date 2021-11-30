import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/buttons.dart';
import 'package:flutter_application_1/components/variables.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Tela inicial, basicamente fiz os botões para navegação entre telas, também fiz um Drawer para cabeçalho
      // que vai ter acesso a foto, produtivo e outras informações do usuario.
      drawer: Drawer(
        // Acesse nos 3 pontinhos, lá vai ser a navegação para fora do app e para administradores/encarregados.
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                      'https://pbs.twimg.com/profile_images/1429646394944626695/FYyejPyN_400x400.jpg'),
                ),
                accountName: const Text('Diogo Fontoura'),
                accountEmail: const Text('15857')),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Inicio'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Sair'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        // Pensando em fazer uma versão noturna e colocar no widget de transformação na appbar
        title: const Text('Tela Inicial'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                    // Essa futura primeira tela será aonde os encarregados/secretario do setor irá informar as noticias do setor especifico
                    // tipo deposito/expedição etc
                    width: 150,
                    height: 100,
                    child: Buttons.largeButton(context,
                        colors: Vars.secondaryGradient)),
                Container(
                  // Esse botão eu fiz com borda pois estou testando os mais agradaveis aos olhos, mas é tudo decoração
                  // nessa futura tela pretendo colocar uma API no site da tambasa, para verificação de produtos/noticias do site
                  // mesmo que ele n seja tão ultilizado da pra ver os produtos e futuramente fazer uma verificação do preço com desconto
                  // para o colaborador
                  width: 150,
                  height: 100,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        elevation: 15,
                        shadowColor: Colors.yellow),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/home');
                    },
                    child: const Text(
                      'Noticias Tambasa',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  // Essa vai ser a tela mais complexa, quero fazer uma implementação com o banco para poder ver a produção do colaborador
                  // até aquele determinado periodo do mês, a maioria dos encarregados sempre mostra quando pedem, a ideia é fornecer informações
                  // para um melhor desempenho, um historico de produção com gráficos e também vou fazer uma IA para especulação da futura renda
                  // baseada nos dados de produtividade do mês, tudo especulativo e usando JAVA.
                  width: 150,
                  height: 100,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                        elevation: 15,
                        shadowColor: Colors.green),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/home');
                    },
                    child: const Text(
                      'Renda',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  // O perfil vai ser uma tela com acesso ao parametro, com informações tipo endereço e e-mail, a ideia é obrigatoriamente pedir
                  // o colaborador em um determinado tempo para atualizar suas informações do parametro pois de acordo com os setores, quando tentam
                  // entrar em contato com o colaborador as informações estão sempre desatualizadas.
                  width: 150,
                  height: 100,
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        elevation: 15,
                        shadowColor: Colors.blueAccent),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/home');
                    },
                    child: const Text(
                      'Perfil',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // Botão de voltar para a tela inicial
        child: const Icon(Icons.exit_to_app),
        onPressed: () {
          setState(() {
            Navigator.of(context).pushReplacementNamed('/');
          });
        },
      ),
    );
  }
}
