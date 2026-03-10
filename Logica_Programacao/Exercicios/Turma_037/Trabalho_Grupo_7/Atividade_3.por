/*
Questão 3 - Separar números pares e ímpares de um vetor

- **Descrição:**
  - Crie um programa que leia 10 números inteiros e armazene em um vetor. Depois, separe em dois vetores, um de impares e outro de pares, depois exiba os números ímpares e os pares separadamente.
*/

programa {

  funcao inicio () {
    const inteiro QTD = 10

    //declaração de vetores e variaveis
    inteiro numeros[QTD], numeros_impares[QTD], numeros_pares[QTD], qtd_par = 0, qtd_impar = 0

    //loop para receber valores
    para(inteiro i = 0; i < QTD; i++) {

      escreva("Digite o "+(i + 1)+"º valor: ")
      leia(numeros[i])

      //se o valor tiver resto igual a zero, é par
      se (numeros[i] % 2 == 0) {
        //atribui o valor ao vetor de numeros pares
        numeros_pares[qtd_par] = numeros[i]
        //conta a quantidade
        qtd_par++

      //se o valor não tiver resto igual a zero, é impar
      } senao {
         //atribui o valor ao vetor de numeros impares
         numeros_impares[qtd_impar] = numeros[i]
         //conta a quantidade
         qtd_impar++
      }
    }

    //imprime os valores pares
    escreva ("\n\nNumeros pares :\n")
      //loop de repetição
      para (inteiro i = 0; i < qtd_par; i++){
        escreva (numeros_pares[i]+" ")
      }
     //imprime os valores impares
    escreva ("\n\nNumeros impares :\n")
      //loop de repetição
      para (inteiro i = 0; i < qtd_impar; i++){
        escreva (numeros_impares[i]+" ")
      }
  }
}