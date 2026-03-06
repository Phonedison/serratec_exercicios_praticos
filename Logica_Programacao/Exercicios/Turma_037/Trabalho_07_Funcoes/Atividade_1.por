programa {
  funcao inteiro somar(inteiro x, inteiro y){
    retorne (x + y)
  }

  funcao inicio() {
    inteiro numero_um, numero_dois

    escreva("Digite o primeiro numero: ")
    leia(numero_um)

    escreva("Digite o segundo numero: ")
    leia(numero_dois)

    escreva(numero_um + " + " + numero_dois + " = " + somar(numero_um, numero_dois))
  }
}