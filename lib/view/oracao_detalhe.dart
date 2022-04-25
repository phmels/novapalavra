import 'package:flutter/material.dart';
import 'package:novapalavra/model/oracoes.dart';

class OracaoDetalheScreen extends StatelessWidget {
  const OracaoDetalheScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final oracao = ModalRoute.of(context)!.settings.arguments as Oracoes;

    return Scaffold(
      appBar: AppBar(
        title: Text(oracao.titulo),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              oracao.imageUrl,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                oracao.indicacao,
                textAlign: TextAlign.justify,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                oracao.oracao,
                style: const TextStyle(
                  fontSize: 17,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
