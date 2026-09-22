import '../lib/estagiario.dart';
import '../lib/gerente.dart';
import '../lib/funcionario.dart';
import '../lib/vendedor.dart';

void main() {
  Funcionario gerente = Gerente("João", 5000, "Vendas");
  Funcionario estagiario = Estagiario(
    "Roberto",
    1500,
    "Engenharia de Software",
  );

  Funcionario vendedor = Vendedor("Maria", 4000, 12000);

  //Exibição das informações
  print(gerente.exibirInformacoes());
  print("=========================================");
  print(estagiario.exibirInformacoes());
  print("=========================================");
  print(vendedor.exibirInformacoes());
}
