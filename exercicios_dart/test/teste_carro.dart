import '../OO/model/carro.dart';

main() {
  Car carro1 = new Car(250);

  print("\nPrimeira rotina: Acelerando o Carro.");
  print(carro1.velocidadeAtual);
  while (!carro1.estaNoLimite()) {
    print("Velocidade atual: ${carro1.acelerar()}KM/H");
  }
  print("\n");
  print("Velocidade atual: ${carro1.velocidadeAtual}");

  print("\nSegunda rotina: Freiando o Carro.");
  while (carro1.velocidadeAtual > 0) {
    carro1.frear();
    print("Velocidade atual: ${carro1.velocidadeAtual}KM/H");
  }

  print("Velocidade atual: ${carro1.velocidadeAtual}");

  carro1.alterarVelocidade = 400;

  print(carro1.velocidadeAtual);
  while (!carro1.estaNoLimite()) {
    print("Velocidade atual: ${carro1.acelerar()}KM/H");
  }

  print("Velocidade atual: ${carro1.velocidadeAtual} KM/H");

  carro1.alterarVelocidade = 60;

  print(carro1.velocidadeAtual);
}
