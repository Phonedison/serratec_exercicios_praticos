/*
Questão 5 - Ordenação de um vetor sem biblioteca
- **Descrição:**
  - Crie um algoritmo que leia um vetor de 10 posições e depois ordene seus valores em ordem crescente sem usar funções prontas ou bibliotecas.
*/

programa {
  funcao inicio() {
    //declaração de variaveis e vetores
    const inteiro QTD = 10
    inteiro numeros[QTD], i, x, backup_valor

      //loop de repetição para receber os valores
      para (i = 0; i < QTD; i++) {
        escreva("Informe o " + (i + 1) +"º numero: ")
        //vetor 'numeros[]' recebe os valores
        leia(numeros[i])
      }
      //loop para garantir que o processo seja feito
      para (i = 0; i < QTD; i++) {
        //loop para percorrer o vetor comparando seus valores 
        para (x = 0; x < QTD - 1; x++) {
          //verifica se o número atual é maior que o próximo
          se (numeros[x] > numeros[(x + 1)]) {
              //backup_valor guarda o valor do vetor 'numeros[x]'
              backup_valor = numeros[x]
              //numeros[x] recebe o valor do seu vizinho da frente
              numeros[x] = numeros [(x + 1)]
              //e seu viznho da frente recebe o valor da variavel 'backup_valor'
              numeros[(x + 1)] = backup_valor

          }
        }
      }
    //saida dos valores alinhados em ordem crescente, menor para o maior
    escreva("\nVetor em ordem: ")
     
      para(i = 0; i < QTD; i++) {
        escreva(numeros[i] + "\t")
      }
  }
}