import 'funcionario.dart';
import 'bonificavel.dart';

class Vendedor extends Funcionario implements Bonificavel {
  // implements chama a interface e indica um comportamento de "Saber fazer" ou "Comporta-se como"
  double _metaVendas = 0;

  //Construtor
  Vendedor(String nome, double salario, double metaVendas)
    : super(nome, salario) {
    this.metaVendas = metaVendas;
    // No dart, o super é colocado antes da chave 🖐️😎🖐️
  }

  @override
  double calcularBonificacao() {
    return salario * 0.02;
  }

  //Getters
  double get metaVendas {
    return _metaVendas;
  }

  //Setters
  set metaVendas(double novaMetaVendas) {
    if (novaMetaVendas < 0) {
      throw ArgumentError("Meta não pode ser menor que zero");
    }

    _metaVendas = novaMetaVendas;
  }

  @override
  String exibirInformacoes() {
    return super.exibirInformacoes() +
        ", A meta de vendas é de: R\$ $metaVendas, e a Bonificação é de: R\$ ${calcularBonificacao()}";
  }
}
