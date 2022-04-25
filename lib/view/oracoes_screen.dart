import 'package:flutter/material.dart';
import 'package:novapalavra/componentes/oracao_item.dart';

import '../data/dummy_data.dart';

class OracoesScreen extends StatelessWidget {
  const OracoesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final oracoesDetails = DUMMY_ORACOES;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Orações'),
      ),
      body: ListView.builder(
        itemCount: oracoesDetails.length,
        itemBuilder: (ctx, index) {
          return OracaoItem(oracoesDetails[index]);
        },
      ),
    );
  }
}
