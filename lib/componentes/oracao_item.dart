import 'package:flutter/material.dart';
import 'package:novapalavra/controller/app_routes.dart';
import 'package:novapalavra/model/oracoes.dart';

class OracaoItem extends StatelessWidget {
  final Oracoes oracao;

  const OracaoItem(
    this.oracao, {
    Key? key,
  }) : super(key: key);

  void _oracaoSelecionada(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.ORACAO_DADOS,
      arguments: oracao,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _oracaoSelecionada(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    oracao.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 15,
                  child: Container(
                    width: 340,
                    color: Colors.black54,
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      oracao.titulo,
                      style: const TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
