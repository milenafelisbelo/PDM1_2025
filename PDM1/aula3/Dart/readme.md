main() {
    print('Alô mundo!');
}


---------------------------------------------------------------------------------------------------------------------------------------------------


main() {
    var naotipada = 'Oi';
    int valor = 25;
    String nome = 'Marcelo';
    double real = 3.15;
    print(naotipada);
    print(valor);
    print(nome);
    print(real);
}


---------------------------------------------------------------------------------------------------------------------------------------------------


    main() {
    String produto = 'Parafuso';
    int quantidade = 100;
    double preco = 0.29;
    var total = quantidade * preco;
    String saida = 'Temos em estoque ' + quantidade.toString() + ' ' + produto + ' por ' + preco.toString() + ' totalizando ' + total.toStringAsFixed(1); -> importante
    print(saida);
    }


---------------------------------------------------------------------------------------------------------------------------------------------------


main() {
    String produto = 'Parafuso';
    int quantidade = 100;
    double preco = 0.29;
    dynamic total = quantidade * preco;
    print('Temos em estoque ${quantidade} de ${produto} por ${preco} totalizando ${total}',);
}


---------------------------------------------------------------------------------------------------------------------------------------------------


main() {
    int total = soma (10, 10);
    print (total);
}

soma(int v1, int v2){
    return v1 + v2;
}


---------------------------------------------------------------------------------------------------------------------------------------------------


// Crie uma função que receba um número inteiro e retorne se é 'Par' ou 'Ímpar'

numero(int n){
  if(n % 2 == 0){
    return 'Par';
  } else {
    return 'Ímpar';
  }
}


---------------------------------------------------------------------------------------------------------------------------------------------------


main() {
    int? result = divisao(15, 2);
    print(result);
}

// Crie uma função que receba dois número e divida o Primeiro pelo segundo
// Retorne somente a parte inteira do resultado, valide se o segundo número não é o 0

divisao(int a, int b) {
  if (b == 0) {
    print("Não é possível dividir por 0");
    return null;
  }
  return a ~/ b;
}


---------------------------------------------------------------------------------------------------------------------------------------------------


import 'dart:io';
import 'dart:math';

main() {
  print('Digite um número inteiro: ');
  String? n1 = (stdin.readLineSync());
  print('Digite outro número: ');
  String? n2 = (stdin.readLineSync());
  if (n1 != null && n2 != null) {
    int num1 = int.parse(n1);
    int num2 = int.parse(n2);
    num potencia = pow(num1, num2);
    print('O resultado da potencia é: $potencia');
  }
}


---------------------------------------------------------------------------------------------------------------------------------------------------


void main() {
  List<int> numeros = [1, 8, 3, 2, 5];
// Ordenar de forma decrescente
  numeros.sort((a, b) => b - a);
  print(numeros);
}


---------------------------------------------------------------------------------------------------------------------------------------------------


void main() {
  List<String> nomes = ['Jhon', 'Mary'];
  print(nomes);
  nomes.add('Joseph');
  print(nomes);
  nomes.removeAt(0);
  print(nomes);
}
