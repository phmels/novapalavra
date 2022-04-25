import 'package:flutter/material.dart';

class CadastroAssistidosScreen extends StatefulWidget {
  const CadastroAssistidosScreen({Key? key}) : super(key: key);

  @override
  State<CadastroAssistidosScreen> createState() =>
      _CadastroAssistidosScreenState();
}

class _CadastroAssistidosScreenState extends State<CadastroAssistidosScreen> {
  String estadoCivil = 'Casado';
  String sexo = 'Feminino';
  String tratamentoSaude = 'Não';
  String trabalhoEspiritual = 'Não';
  String lugartrabalhoEspiritual = 'Espiritismo';
  String curso = 'Não';
  String outroTratamento = 'Não';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar Assistido!'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('Dados Pessoais'),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Primeiro Nome',
                  labelText: 'Nome',
                  icon: Icon(
                    Icons.person,
                    color: Colors.orange,
                  ),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Endereço',
                  labelText: 'Rua',
                  icon: Icon(
                    Icons.abc,
                    color: Colors.orange,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Bairro',
                        labelText: 'Bairro',
                        icon: Icon(
                          Icons.location_city_sharp,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Cidade',
                        labelText: 'Cidade',
                        icon: Icon(
                          Icons.location_city,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Uf',
                        labelText: 'UF',
                        icon: Icon(
                          Icons.location_city,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Cep',
                        labelText: 'Cep',
                        icon: Icon(
                          Icons.location_city,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Telefone',
                        labelText: 'Residencial',
                        icon: Icon(
                          Icons.phone,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Telefone',
                        labelText: 'Celular',
                        icon: Icon(
                          Icons.phone_android,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Data Nascimento',
                        labelText: 'Data Nascimento',
                        icon: Icon(
                          Icons.date_range,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        labelText: 'Email',
                        icon: Icon(
                          Icons.mail,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Estado Civil :'),
                  const SizedBox(
                    width: 10,
                  ),
                  DropdownButton<String>(
                    value: estadoCivil,
                    icon: const Icon(Icons.check),
                    elevation: 16,
                    style: const TextStyle(color: Colors.orange),
                    underline: Container(
                      height: 1,
                      color: Colors.orange,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        estadoCivil = newValue!;
                      });
                    },
                    items: <String>[
                      'Casado',
                      'Solteiro',
                      'Viuvo',
                      'Divorciado',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('Sexo :'),
                  const SizedBox(
                    width: 10,
                  ),
                  DropdownButton<String>(
                    value: sexo,
                    icon: const Icon(Icons.check),
                    elevation: 16,
                    style: const TextStyle(color: Colors.orange),
                    underline: Container(
                      height: 1,
                      color: Colors.orange,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        sexo = newValue!;
                      });
                    },
                    items: <String>[
                      'Feminino',
                      'Masculino',
                      'Trans',
                      'Não declarar',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Profissão',
                  labelText: 'Profissão',
                  icon: Icon(
                    Icons.work,
                    color: Colors.orange,
                  ),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Religião',
                  labelText: 'Religião',
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.orange,
                  ),
                ),
              ),
              Row(
                children: [
                  const Text(
                    'Esta fazendo algum Tramento de saude?',
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  DropdownButton<String>(
                    value: tratamentoSaude,
                    icon: const Icon(Icons.check),
                    elevation: 16,
                    style: const TextStyle(color: Colors.orange, fontSize: 12),
                    underline: Container(
                      height: 1,
                      color: Colors.orange,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        tratamentoSaude = newValue!;
                      });
                    },
                    items: <String>[
                      'Não',
                      'Sim',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
              TextFormField(
                style: TextStyle(fontSize: 12),
                decoration: const InputDecoration(
                  hintText: 'Modulos',
                  labelText: 'Modulos :',
                ),
              ),
              const Divider(),
              Row(
                children: [
                  const Text(
                    'Participa de Algum Trabalho espiritual ?',
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  DropdownButton<String>(
                    value: trabalhoEspiritual,
                    icon: const Icon(Icons.check),
                    elevation: 16,
                    style: const TextStyle(color: Colors.orange, fontSize: 12),
                    underline: Container(
                      height: 1,
                      color: Colors.orange,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        trabalhoEspiritual = newValue!;
                      });
                    },
                    items: <String>[
                      'Não',
                      'Sim',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  DropdownButton<String>(
                    value: lugartrabalhoEspiritual,
                    icon: const Icon(Icons.check),
                    elevation: 16,
                    style: const TextStyle(color: Colors.orange),
                    underline: Container(
                      height: 1,
                      color: Colors.orange,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        lugartrabalhoEspiritual = newValue!;
                      });
                    },
                    items: <String>[
                      'Espiritismo',
                      'Umbanda',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  const Text(
                    'Participa ou participou de algum curso?',
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  DropdownButton<String>(
                    value: curso,
                    icon: const Icon(Icons.check),
                    elevation: 16,
                    style: const TextStyle(color: Colors.orange, fontSize: 12),
                    underline: Container(
                      height: 1,
                      color: Colors.orange,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        curso = newValue!;
                      });
                    },
                    items: <String>[
                      'Não',
                      'Sim',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
              const Divider(),
              TextFormField(
                style: const TextStyle(fontSize: 12),
                decoration: const InputDecoration(
                  hintText: 'Quais',
                  labelText: 'Quais ?',
                ),
              ),
              const Divider(),
              Row(
                children: [
                  const Text(
                    'Participa de algum outro Tratamento?',
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  DropdownButton<String>(
                    value: outroTratamento,
                    icon: const Icon(Icons.check),
                    elevation: 16,
                    style: const TextStyle(color: Colors.orange, fontSize: 12),
                    underline: Container(
                      height: 1,
                      color: Colors.orange,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        outroTratamento = newValue!;
                      });
                    },
                    items: <String>[
                      'Não',
                      'Sim',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
              const Divider(),
              SizedBox(
                child: TextFormField(
                  style: const TextStyle(fontSize: 12),
                  decoration: const InputDecoration(
                    hintText: 'Especifique',
                    labelText: 'Especifique :',
                  ),
                ),
              ),
              const Divider(),
              TextFormField(
                style: const TextStyle(fontSize: 12),
                decoration: const InputDecoration(
                  hintText: 'Detalhe ',
                  labelText: ' Detalhe suas dificuldades :',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Salvar'),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 30,
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Cancelar'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
