class Car {
  final int velocidadeMaxima;
  int _velocidadeAtual = 0;

  Car(this.velocidadeMaxima);

  int acelerar() {
    if (_velocidadeAtual >= velocidadeMaxima) {
      return 0;
    } else {
      return this._velocidadeAtual += 5;
    }
  }

  int frear() {
    if (_velocidadeAtual > 0) {
      return _velocidadeAtual -= 5;
    } else {
      return 0;
    }
  }

  bool estaNoLimite() {
    if (_velocidadeAtual == velocidadeMaxima) {
      return true;
    } else {
      return false;
    }
  }

  int get velocidadeAtual {
    return _velocidadeAtual;
  }

  void set alterarVelocidade(int velocidade) {
    if (velocidade > velocidadeMaxima) {
      print("A velocidade passada ultrapassa a velocidade máxima");
    } else if (velocidadeAtual - velocidade < 0) {
      print("A velocidade passada não pode ser adicionada");
    } else {
      this._velocidadeAtual = velocidade;
    }
  }
}
