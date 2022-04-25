import 'package:flutter/material.dart';

import '../controller/app_routes.dart';

class AssistidosScreen extends StatefulWidget {
  const AssistidosScreen({Key? key}) : super(key: key);

  @override
  State<AssistidosScreen> createState() => _AssistidosScreenState();
}

class _AssistidosScreenState extends State<AssistidosScreen> {
  void _oracoes(BuildContext context) {
    Navigator.of(context).pushNamed(AppRoutes.ORACOES_SCREEN);
  }

  void _agenda(BuildContext context) {
    Navigator.of(context).pushNamed(AppRoutes.AGENDA_SCREEN);
  }

  void _tratamento(BuildContext context) {
    Navigator.of(context).pushNamed(AppRoutes.TRATAMENTO_SCREEN);
  }

  void _cadastro(BuildContext context) {
    Navigator.of(context).pushNamed(AppRoutes.CADASTRO_SCREEN);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Image.asset('assests/novapalavra.png'),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 43,
            color: Colors.orangeAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      _tratamento(context);
                    },
                    child: const Text('Tratamentos'),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                // Expanded(
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       primary: Colors.orangeAccent,
                //     ),
                //     onPressed: () {
                //       _agenda(context);
                //     },
                //     child: const Text('Agenda'),
                //   ),
                // ),
                // const SizedBox(
                //   width: 10,
                // ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      _oracoes(context);
                    },
                    child: const Text('Orações'),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      _cadastro(context);
                    },
                    child: const Text('Cadastro'),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                Text(
                  'O que é a Nova Palavra',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    'Em 2006 a Nova Palavra abriu as suas portas para expressar a sua fé no Deus de Amor, no Pai Eterno, em seus Santos Anjos, em Jesus, nos Guardiões do Universo e nos Santos Espíritos.'),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'Respeitando sempre o acreditar daqueles que a procuram em seu Templo do Fogo Divino, a Nova Palavra recebe a todos com alegria, que é o primeiro Mistério Divino, com uma palavra amiga, um abraço fraterno, com um único objetivo que é transformar e salvar vidas.'),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'A Missão da Nova Palavra é o Divino Despertar do ser humano para o entendimento que as palavras de Jesus refletem a Verdade da Vida, que o Reino de Deus está em cada um de filhos amados, e que a certeza do amor do Pai Eterno é que dá forças para acreditar que tudo é possível conquistar quando a verdadeira fé é a sustentação, o alicerce da vida humana.'),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'Atualmente a Nova Palavra está localizada a Rua Vargem Grande, 37  Tatuapé  Ao lado do Metrô Carrão'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
