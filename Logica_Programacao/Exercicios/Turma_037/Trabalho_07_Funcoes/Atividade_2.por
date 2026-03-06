programa {
  funcao inteiro quadrado(inteiro x){
    retorne (x * x)
  }

  funcao inicio() {
    inteiro numero
    escreva("Digite um numero: ")
    leia(numero)

    escreva(numero + "² = " + quadrado(numero))
  }
}