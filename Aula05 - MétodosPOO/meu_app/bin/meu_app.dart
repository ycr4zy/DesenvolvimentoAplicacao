void main() {
  Roupa camisas = Roupa("Camisa", 10, 100);
  print(camisas.exibirInfo());
  print("-----------------------------------"); 
  camisas.decrementaRoupa(5);
  print("-----------------------------------");
  print(camisas.exibirInfo()); 
  print("-----------------------------------");
  camisas.incrementaRoupa(25);
  print("-----------------------------------");
  print(camisas.exibirInfo());
}

class Roupa {
  String tipo;
  double valor;
  int quantidade;

  Roupa(this.tipo, this.quantidade, this.valor);

  void decrementaRoupa(int quantidade) {
    if (quantidade > 0 && this.quantidade >= quantidade) {
      this.quantidade -= quantidade;// -= O próprio resultado terá um decremento
      print("Quantidade retirada");  
    } else {
      print("Quantidade inválida");
    }
  }

  void incrementaRoupa(int quantidade) {
    if(quantidade > 0) {
      this.quantidade += quantidade;
      print("Inserido com sucesso!");
    } else {
      print("Quantidade inválida");
    }
  }

  double valorTotal() {
    double valorTotal = valor * quantidade;
    return valorTotal;
  }

  String exibirInfo() {
    return "Tipo: $tipo\n"
           "Valor: R\$ $valor\n"
           "Quantidade: $quantidade\n"
           "Valor total no estoque: R\$ ${valorTotal()}\n";
  }
}
