/*
Somar os Elementos de um Vetor

- Crie um vetor de 5 números inteiros.
- Peça ao usuário para digitar os valores.
- Some todos os números do vetor e exiba o resultado.

*/


programa {
  funcao inicio () {
    const inteiro QTD = 5
    inteiro numero[QTD], acumulador = 0

      para (inteiro i = 0; i < QTD; i++) {

        escreva("Digite o " + (i + 1) + "º número: ")
        leia(numero[i])

        acumulador += numero[QTD]
        
      }

    escreva ("\n\nA soma dos números informados é: ", acumulador)
  }
}