class AssitidosCadastro {
  final String id;
  final String nome;
  final String sobreNome;
  final DateTime dataNascimento;
  final DateTime dataCadastro;
  final String rua;
  final String bairro;
  final String cidade;
  final String estado;
  final String cep;
  final String numero;
  final String complemento;
  final String telefoneResidencial;
  final String email;
  final String celular;
  final List estadoCivil;
  final String profissao;
  final String religiao;
  final List tratamentoDeSaude;
  final String modulo;
  final List trabalhoEspiritual;
  final bool umbanda;
  final bool espiritismo;
  final List participouDeCurso;
  final String qualCurso;
  final List participaDeTratamento;
  final String qualTratamento;

  AssitidosCadastro(
    this.complemento,
    this.telefoneResidencial,
    this.religiao,
    this.tratamentoDeSaude,
    this.modulo,
    this.trabalhoEspiritual,
    this.umbanda,
    this.espiritismo,
    this.participouDeCurso,
    this.qualCurso,
    this.participaDeTratamento,
    this.qualTratamento, {
    required this.id,
    required this.nome,
    required this.sobreNome,
    required this.dataNascimento,
    required this.dataCadastro,
    required this.rua,
    required this.bairro,
    required this.estado,
    required this.cep,
    required this.cidade,
    required this.numero,
    required this.email,
    required this.celular,
    required this.estadoCivil,
    required this.profissao,
  });
  void _salvarAssistido() {}
  void _retornaAssistido() {}
}
