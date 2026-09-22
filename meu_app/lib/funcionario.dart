abstract class Funcionario {
  String _nome = "";
  double _salario = 0;

  //Construtor
  Funcionario(String nome, double salario) {
    this.nome = nome;
    this.salario =
        salario; // É necessário acessar pelo set primeiro, porque podemos aplicar as devidas regras
  }

  //Getters
  String get nome {
    return _nome;
  }

  double get salario {
    return _salario; // ou double get salario => _salario
  }

  //Setters
  set nome(String novoNome) {
    if (novoNome.trim().isEmpty) {
      throw ArgumentError("O nome não pode estar vazio");
    } // trim().isEmpty verifica se o nome está vazio ou não
    _nome = novoNome;
  }

  set salario(double novoSalario) {
    if (novoSalario < 0) {
      throw ArgumentError("O salário deve ser maior que zero");
    }
    _salario = novoSalario;
  }

  //Exibir as informações do funcionário - Método
  String exibirInformacoes() {
    return ("Nome: $nome, Salário: R\$ $salario");
  }
}
