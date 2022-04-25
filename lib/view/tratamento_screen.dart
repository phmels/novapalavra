import 'package:flutter/material.dart';
import 'package:novapalavra/componentes/tratamento_item.dart';
import 'package:novapalavra/data/dummy_data.dart';
import 'package:novapalavra/model/tratamento.dart';

class TratamentoScreen extends StatelessWidget {
  final List<Tratamento> loadTratamentos = DUMMY_TRATAMENTO;
  const TratamentoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tratamento'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: loadTratamentos.length,
        itemBuilder: (ctx, i) => TratamentoItem(tratamento: loadTratamentos[i]),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
