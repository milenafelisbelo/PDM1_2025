import 'dart:io';

List<Map<String, dynamic>> candidatos = [];

void adicionarCandidato() {
  stdout.write("Nome do candidato: ");
  String? nome = stdin.readLineSync();
  stdout.write("Quantidade de votos: ");
  int votos = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  if (nome != null && nome.isNotEmpty) {
    candidatos.add({'nome': nome, 'votos': votos});
    print("Candidato adicionado!");
  } else {
    print("Nome inválido!");
  }
}

void excluirCandidato() {
  stdout.write("Nome do candidato a excluir: ");
  String? nome = stdin.readLineSync();
  if (nome != null && nome.isNotEmpty) {
    candidatos.removeWhere((c) => c['nome'].toString().toLowerCase() == nome.toLowerCase());
    print("Candidato removido!");
  } else {
    print("Nome inválido!");
  }
}

void calcularPorcentagem() {
  int totalVotos = candidatos.fold(0, (soma, c) => soma + (c['votos'] as int));
  if (totalVotos == 0) {
    print("Nenhum voto registrado.");
    return;
  }
  for (var c in candidatos) {
    double porcentagem = (c['votos'] / totalVotos) * 100;
    print("${c['nome']}: ${c['votos']} votos (${porcentagem.toStringAsFixed(2)}%)");
  }
}

void main() {
  while (true) {
    print("\n1 - Adicionar Candidato\n2 - Excluir Candidato\n3 - Mostrar Resultados\n4 - Sair");
    stdout.write("Opção: ");
    String? opcao = stdin.readLineSync();
    if (opcao == '1') {
      adicionarCandidato();
    } else if (opcao == '2') {
      excluirCandidato();
    } else if (opcao == '3') {
      calcularPorcentagem();
    } else if (opcao == '4') {
      print("Encerrando programa...");
      break;
    } else {
      print("Opção inválida!");
    }
  }
}
