/*

Armazenar e Exibir Números

- Crie um vetor de 5 números inteiros.
- Peça ao usuário para digitar os valores.
- Exiba os valores digitados na tela.

*/

programa {

  inclua biblioteca Util --> u

  funcao inicio() {

  const inteiro QTD = 5
  inteiro numeros[QTD], index = 0

    para (index = 0; index < QTD; index++) {
        escreva("Digite "+ index+1 +"º número: ")
        leia(numeros[index])
    }

  util.aguarde(1000)

  escreva("\nOs números informados foram: \n\n")

    para( index = 0; index < QTD; index++) {
        escreva(numeros[index] + "\t")
    }

  }
}