class Tratamento {
  final String id;
  final String nome;
  final String medium;
  final String dataInicio;
  final String dataFim;
  final String tratamento;
  final String dataAtendimento;

  const Tratamento(
      {required this.tratamento,
      required this.id,
      required this.nome,
      required this.medium,
      required this.dataInicio,
      required this.dataFim,
      required this.dataAtendimento});

  void _salvarTratamento() {}
}
