/*

Atividade 1 – Função para Somar Dois Números

- Crie uma função chamada somar() que recebe dois números e retorna a soma.
- No programa principal, peça dois números ao usuário e use a função para exibir o resultado.

*/

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