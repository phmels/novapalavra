import 'package:flutter/material.dart';
import 'package:novapalavra/controller/app_routes.dart';
import 'package:novapalavra/model/tratamento.dart';

class TratamentoItem extends StatelessWidget {
  final Tratamento tratamento;
  const TratamentoItem({Key? key, required this.tratamento}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _tratamentotodetalhe(BuildContext context) {
      Navigator.of(context)
          .pushNamed(AppRoutes.DETAIL_SCREEN, arguments: tratamento);
    }

    return InkWell(
      onTap: () {
        _tratamentotodetalhe(context);
      },
      borderRadius: BorderRadius.circular(15),
      splashColor: const Color.fromARGB(148, 236, 160, 45),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text(
                tratamento.dataAtendimento,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                tratamento.medium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              const Icon(
                Icons.calendar_month_outlined,
                size: 40,
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: const Color.fromARGB(148, 236, 160, 45),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
