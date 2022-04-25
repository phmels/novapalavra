import 'package:flutter/material.dart';
import 'package:novapalavra/model/tratamento.dart';

class TratamentoDetailScreen extends StatelessWidget {
  const TratamentoDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tratamento = ModalRoute.of(context)?.settings.arguments as Tratamento;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do tratamento'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(148, 236, 160, 45),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.calendar_month_outlined,
                      size: 50,
                    ),
                  ),
                ),
              ),
              const Text(
                'Medium :',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                tratamento.medium,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(148, 236, 160, 45),
            ),
            child: Text(
              'Iniciado dia ${tratamento.dataAtendimento}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 500,
                width: 490,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(155, 241, 229, 210),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    tratamento.tratamento,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
