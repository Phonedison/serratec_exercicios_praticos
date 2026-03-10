/*
Questão 19 - Contar Números Positivos Até Entrada Negativa
- **Descrição:**
  - Desenvolva um algoritmo que leia um conjunto de números inteiros e pare a leitura quando um número negativo for digitado. Ao final, exiba quantos números positivos foram lidos.
*/

programa {
  funcao inicio () {
    inteiro contador = 0, valor

    faca {
      escreva("Digite o " + (contador + 1) + "º valor : ")
      leia(valor)

      se (valor < 0) {
        escreva("\n Obrigado por utilizar, o código foi finalizado!!!\n")
      } senao {
        contador++
      }
    } enquanto (valor >= 0)

    escreva("\n Foram informados " + contador  + " números positivos.\n")
  }
}