import 'package:flutter/material.dart';
import 'package:novapalavra/controller/app_routes.dart';
import 'package:novapalavra/view/agenda_screen.dart';
import 'package:novapalavra/view/cadastro_assitido_screen.dart';
import 'package:novapalavra/view/homepage_screen.dart';
import 'package:novapalavra/view/login_screen.dart';
import 'package:novapalavra/view/oracao_detalhe.dart';
import 'package:novapalavra/view/oracoes_screen.dart';
import 'package:novapalavra/view/tratamento_detail_screen.dart';
import 'package:novapalavra/view/tratamento_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      routes: {
        AppRoutes.HOME: (ctx) => const LoginPage(),
        AppRoutes.ASSISTIDOS_SCREEN: (ctx) => const AssistidosScreen(),
        AppRoutes.ORACOES_SCREEN: (ctx) => const OracoesScreen(),
        AppRoutes.TRATAMENTO_SCREEN: (ctx) => const TratamentoScreen(),
        AppRoutes.AGENDA_SCREEN: (ctx) => const AgendaScreen(),
        AppRoutes.ORACAO_DADOS: (ctx) => const OracaoDetalheScreen(),
        AppRoutes.CADASTRO_SCREEN: (ctx) => const CadastroAssistidosScreen(),
        AppRoutes.DETAIL_SCREEN: (ctx) => const TratamentoDetailScreen(),
      },
    );
  }
}
